#!/bin/bash

cur_date=$(date "+%Y-%m-%d")

mkdir /home/keynes/Documents/datanara/$cur_date
cd /home/keynes/Documents/datenara/$cur_date

/usr/bin/expect <<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/A项目档案管理台账 /home/keynes/Documents/datanara/$cur_date/A项目档案管理台账
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/B业务档案管理台账 /home/keynes/Documents/datanara/$cur_date/B业务档案管理台账
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/C合作方档案管理台账 /home/keynes/Documents/datanara/$cur_date/C合作方档案管理台账
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/D合同档案管理台账 /home/keynes/Documents/datanara/$cur_date/D合同档案管理台账
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/E子公司档案管理台账 /home/keynes/Documents/datanara/$cur_date/E子公司档案管理台账
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/K文件交接记录 /home/keynes/Documents/datanara/$cur_date/K文件交接记录
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/L风控及其他部门台账共享 /home/keynes/Documents/datanara/$cur_date/L风控及其他部门台账共享
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/合同交接登记表模板.xlsx /home/keynes/Documents/datanara/$cur_date/合同交接登记表模板.xlsx
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/档案借阅登记表.xlsx /home/keynes/Documents/datanara/$cur_date/档案借阅登记表.xlsx
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/档案盒脊签.xlsx /home/keynes/Documents/datanara/$cur_date/档案盒脊签.xlsx
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

/usr/bin/expect<<-EOF
spawn scp -r root@192.168.101.212:/home/xxzx/dak/档案管理科每日工作量统计表.xlsx /home/keynes/Documents/datanara/$cur_date/档案管理科每日工作量统计表.xlsx
expect "*password:"
send "Xxzx111111\n"
expect eof
EOF

efilename=".tar.gz"
cd /home/keynes/Documents/datanara/
tar -zcvf $cur_date$efilename $cur_date
rm -rf /home/keynes/Documents/datanara/$cur_date
