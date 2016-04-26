class salt::minion {
  contain salt::minion::install
  contain salt::minion::configure
  contain salt::minion::service
}
