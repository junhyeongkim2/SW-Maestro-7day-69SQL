SELECT b.BOOK_ID, a.AUTHOR_NAME, DATE_FORMAT(b.PUBLISHED_DATE, "%Y-%m-%d") FROM BOOK as b
                                                                                    JOIN AUTHOR as a ON b.CATEGORY="경제" and a.AUTHOR_ID=b.AUTHOR_ID ORDER BY PUBLISHED_DATE;