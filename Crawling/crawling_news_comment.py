from selenium import webdriver
import time
from bs4 import BeautifulSoup
import csv

# 정치 경제 사회
category = ['100', '101', '102']

# 정치 (정치일반, 국방/외교, 행정, 북한, 국회/정당, 청와대)
ca_de = ['269', '267', '266', '268', '265', '264']

def setting():
    options = webdriver.ChromeOptions()
    options.add_argument('--disable-extensions')
    options.add_argument('--headless')
    options.add_argument('--disable-gpu')
    options.add_argument('--no-sandbox')

    driver = webdriver.Chrome(r'C:\Users\paqgl\PycharmProjects\pythonProject_crawling\bs4\chromedriver.exe',
                              options=options)
    return driver

def crawling_all_news(category, category_detail, month):
    for m in month:
        for de in category_detail:
            page = 1
            while True:
                # last page
                if checklastpage(category, de, page, m):
                    crawling_news_link(category, de, page, m)
                    break
                crawling_news_link(category, de, page, m)
                page = page + 1

def checklastpage(category, category_de, page, date):
    driver = setting()

    url = 'https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid2=' + category_de + '&sid1=' + category + '&date=' + str(
        date) + '&page=' + \
          str(page)

    driver.get(url)
    time.sleep(0.5)  # 웹 페이지 로드를 보장하기 위해 3초 쉬기

    xpath = """//*[@id="main_content"]/div[3]/strong"""
    now_page = driver.find_element_by_xpath(xpath).text
    driver.quit()
    if int(page) > int(now_page):
        return True
    else:
        return False


def crawling_news_link(category, category_de, pg, date):
    driver = setting()

    url = 'https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid2=' + category_de + '&sid1=' + category + '&date=' + str(
        date) + '&page=' + \
          str(pg)

    driver.get(url)
    time.sleep(0.5)  # 웹 페이지 로드를 보장하기 위해 3초 쉬기

    text = driver.page_source
    soup = BeautifulSoup(text, 'html.parser')

    i = 1
    for li in soup.select('dl > dt:nth-child(1) > a'):
        # news link
        a = li["href"]
        # news title
        b = li.select('img')

        if not b:
            b = li.text.strip()
        else:
            b = b[0]['alt']
        print(str(pg) + "page ", i, "번째 뉴스")
        i += 1
        crawling_comments(date, a, b, category, category_de, pg)
    driver.quit()


def crawling_comments(date, base, title, category, category_de, page):
    driver = setting()
    summary = ""
    comments = []
    # 정치 일반
    url = base
    driver.get(url)
    time.sleep(0.5)  # 웹 페이지 로드를 보장하기 위해 3초 쉬기

    # 요약봇 클릭
    xpath = """//*[@id="ct"]/div[1]/div[3]/div[3]/div[2]/div[1]/a"""
    try:
        driver.find_element_by_xpath(xpath).click()
        time.sleep(0.5)
        contents = driver.find_elements_by_css_selector("div._contents_body")
        for content in contents:
            summary += content.text.strip()
        summary = summary.replace('\n', ' ')
    except:
        print("", end="")

    li_news = [date, title, summary]
    store_news(li_news)
    try:
        # 그냥 뉴스 댓글 더보기
        xpath = """// *[ @ id = "cbox_module"] / div[2] / div[10] / a / span[1]"""
        driver.find_element_by_xpath(xpath).click()
        time.sleep(0.5)
        # 댓글 스크롤 끝까지
        xpath = """//*[@id="cbox_module"]/div[2]/div[10]/a/span/span/span[1]"""

        while True:
            try:
                driver.find_element_by_xpath(xpath).click()
                time.sleep(0.5)
            except:
                break
        # 댓글 크롤링
        text = driver.page_source
        soup = BeautifulSoup(text, 'html.parser')

    except:
        # 영상뉴스 댓글 더보기
        xpath = """// *[ @ id = "cbox_module"] / div / div / a[1] / div"""
        try:
            driver.find_element_by_xpath(xpath).click()
            time.sleep(0.5)
            while True:
                try:
                    xpath = """//*[@id="cbox_module"]/div[2]/div[10]/a/span/span/span[1]"""
                    driver.find_element_by_xpath(xpath).click()
                    time.sleep(0.5)
                except:
                    break
        except:
            print("error", end="")

        # 댓글 크롤링
        text = driver.page_source
        soup = BeautifulSoup(text, 'html.parser')

    for li in soup.select('span.u_cbox_contents'):
        comment = li.text
        comment = comment.replace('\n', ' ')
        comments.append(comment)
    print(date, title, summary, comments, [category, category_de, page])

    li_comments = [date, comments]
    store_comments(li_comments)

def left_onepage(date, category, category_de, pg, count):
    driver = setting()

    url = 'https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid2=' + category_de + '&sid1=' + category + '&date=' + str(
        date) + '&page=' + \
          str(pg)

    driver.get(url)
    time.sleep(0.5)  # 웹 페이지 로드를 보장하기 위해 3초 쉬기

    text = driver.page_source
    soup = BeautifulSoup(text, 'html.parser')

    li = soup.select('dl > dt:nth-child(1) > a')

    for i in range(count, li.__len__()):
        a = li[i]["href"]
        b = li[i].select('img')
        if not b:
            try:
                b = li.text.strip()
            except:
                print("Nothing")
        else:
            b = b[0]['alt']
        crawling_comments(date, a, b, category, category_de, pg)

    driver.quit()


# 지정 page붙터 한 세부 카테고리 끝까지
def left_oneday_and_onecategory(date, category, de, page):
    while True:
        # last page
        if checklastpage(category, de, page, date):
            crawling_news_link(category, de, page, date)
            break
        crawling_news_link(category, de, page, date)
        page = page + 1


# category_detail에 앞에 수집한 세부카테고리는 잠시 삭제해줘야함
# 이거까지하면 이제 다음에는 final()에서 앞에 수집한 날짜는 제거하고 다시 돌리면 됨
def left_category_all(date, category, category_detail):
    for de in category_detail:
        page = 1
        while True:
            # last page
            if checklastpage(category, de, page, date):
                crawling_news_link(category, de, page, date)
                break
            crawling_news_link(category, de, page, date)
            page = page + 1


def store_comments(li_comments):
    csv_name = './comments/'+li_comments[0] +'_269_150'+ '.csv'
    #csv_name = "tempcomments.csv"
    with open(csv_name, 'a', encoding='UTF-8-sig', newline='') as writer_csv:
        # 파일정보들
        writer = csv.writer(writer_csv, delimiter=',')
        for i in li_comments[1]:
            li = []
            li.append(i)
            writer.writerow(li)

def store_news(li_news):
    # news.csv
    with open('news_feb_269_150.csv', 'a', encoding='UTF-8-sig', newline='') as writer_csv:
        # 파일정보들
        writer = csv.writer(writer_csv, delimiter=',')
        writer.writerow(li_news)

