#!/usr/bin/expect -f

user="user"
password="password"
pub_url=""

set number [lindex $argv 0]
set address [lindex $argv 1]

if { $number == "" } {
  puts "Usage: <number>\n"
  exit 1
}

if { $number == "100" && $address == "" } {
  puts "Usage: <address>\n"
  exit 1
}

spawn ssh $user@$pub_url
expect {
  "Are you sure you want to continue connecting*" {
    send "yes\r"
    exp_continue
  }
}
expect "$user@$pub_url's password: "
send "$password"
expect "Choose a number : "
send "$number\r"
expect {
  "Input IP Address : " {
    send "$address\r"
    exp_continue
  } "Are you sure you want to continue connecting*" {
    send "yes\r"
    exp_continue
  } "*password*" {
    send "CU97h:EntaoeRc\r"
    exp_continue
  } "$user@*" {
    send "echo hi\r"
  }
}
interact
