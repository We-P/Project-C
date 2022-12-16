curl -X POST "$4:5601/api/data_views/data_view" -H 'kbn-xsrf: true' -H 'Content-Type: application/json' -d'
{
  "data_view": {
     "title": "'$1'*",
     "name": "'$1'",
     "timeFieldName": "@timestamp"
  }
}
' -u $2:$3

