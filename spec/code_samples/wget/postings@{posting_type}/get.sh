wget --quiet \
  --method GET \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --header 'end-user-token: SOME_STRING_VALUE' \
  --output-document \
  - 'https://www.directfreight.com/api/postings/%7Bposting_type%7D?posting_id=SOME_ARRAY_VALUE'