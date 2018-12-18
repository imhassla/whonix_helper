#!/usr/bin/env python
# -*- coding: utf-8 -*-

from __future__ import print_function

import argparse
import requests
import csv
import time

from bs4 import BeautifulSoup

URL = "http://foxtools.ru/Proxy"


class DownloadHTMLError(Exception):
    pass


def read_args():
    parser = argparse.ArgumentParser(description="""Parse proxy servers from foxtools.ru""",
                                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("-p", "--page-numbers", default=1, type=int, help="Max pages")
    parser.add_argument("-o", "--output", default="proxy", help="Output csv path")
    parser.add_argument("-d", "--delay", default=2, type=int, help="Delay between requests in seconds")
    return parser.parse_args()


def make_http_req(url, page_num, delay):
    """
    Функция отвечает за скачивание HTML
    :param url: строка
    :param page_num: целое число обозначающее номер страницы
    :param delay: целое число обозначающее задержку (в секундах) между запросами, если запрашивается несколько страниц,
    чтобы избежать возможного бана.
    :return: html
    """
    params = {"page": page_num}
    try:
        resp = requests.get(url, params=params)
        print("Fetch url {} - {}".format(resp.url, "OK" if resp.ok else resp.status_code))
        resp.raise_for_status()
        if delay:
            time.sleep(delay)
        return resp.text
    except requests.RequestException as e:
        print(e)


def parse_content(table):
    """
    Функия принимает объект BeautifulSoup, который содержит в себе только таблицу
    :param table: BeautifulSoup объект
    :return: список словарей, где каждый словарь представляет собой описание одного прокси сервера
    """
    tr = table.find("tbody").find_all("tr")
    content = []
    for t in tr:
        td = t.find_all("td")
        data = {
            "ip": td[1].find(text=True).strip().encode("utf-8"),
            "port": td[2].find(text=True).strip().encode("utf-8"),
            "country": td[3].find(text=True).strip().encode("utf-8"),
            "anonymous": td[4].find(text=True).strip().encode("utf-8"),
            "type": td[5].find(text=True).strip().encode("utf-8"),
            "response_time": td[6].find(text=True).strip().encode("utf-8"),
            "check_datetime": td[7].find(text=True).strip().encode("utf-8"),
        }

        content.append(data)
    return content


def main():
    cli_args = read_args()

    result = []
    for page_num in range(1, cli_args.page_numbers + 1):
        html = make_http_req(URL, page_num, cli_args.delay)
        if not html:
            raise DownloadHTMLError("Bad page number or some server error")

        soup = BeautifulSoup(html, "lxml")
        table = soup.find("table", {"id": "theProxyList"})

        result.extend(parse_content(table))

    with open(cli_args.output, "w") as f:
        fieldnames = ["ip", "port", "country", "anonymous", "type", "response_time", "check_datetime"]
        writer = csv.DictWriter(f, fieldnames=fieldnames)

        writer.writeheader()
        writer.writerows(result)


if __name__ == "__main__":
    main()
