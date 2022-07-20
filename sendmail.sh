#!/usr/bin/env bash
EMAIL_SENDER="01633568287a@gmail.com"
GOOGLE_APP_PASSWORD="jzljqvakyyukoowh"
EMAIL_RECEIVER="01633568287a@gmail.com"
SUBJECT="Bat dau nao!!"
RAND_NUM=$(($RANDOM % 100))
BODY="Sap toi 6h 30 roi. Danh de di.\n  Con so hom nay la:  $RAND_NUM "
curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
    --mail-from $EMAIL_SENDER \
    --mail-rcpt $EMAIL_RECEIVER \
    --user $EMAIL_SENDER:$GOOGLE_APP_PASSWORD \
    -T <(echo -e "From: Ich nuoc loi nha
        To: $EMAIL_RECEIVER
        Subject: $SUBJECT
          $BODY")

echo "sendmail successfully"