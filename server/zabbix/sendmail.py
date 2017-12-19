#!/usr/bin/python
#coding:utf-8
import smtplib
from email.mime.text import MIMEText
from email.header import Header
import sys

#邮箱服务器地址
mail_host = 'smtp.exmail.qq.com'
#邮箱用户名
mail_user = 'alert@f-pays.com'
#邮箱密码
mail_pass = '2h8bEh$b1UFeDNh:'

def send_mail(to_list,subject,content):
    me = mail_user
    msg = MIMEText(content,_charset='utf-8')
    msg['Subject'] = Header(subject, 'utf-8')
    msg['From'] = me
    msg['to'] = to_list
    #msg['to'] = to_list

    try:
        s = smtplib.SMTP_SSL(mail_host, 465)   
	s = smtplib.SMTP()
        s.connect(mail_host)
        s.login(mail_user,mail_pass)
        s.sendmail(me,to_list,msg.as_string())
        s.close()
        return True
    except Exception,e:
        print str(e)
        return False

if __name__ == "__main__":
    print sys.argv[1]
    print sys.argv[2]
    print sys.argv[3]
    send_mail(sys.argv[1], sys.argv[2], sys.argv[3])
