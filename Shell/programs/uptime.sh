function up {
  uptime | cut -d ' ' -f 5 | cut -d ',' -f 1
}
