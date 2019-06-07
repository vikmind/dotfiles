# MacOS stuff
alias repair_camera="sudo killall VDCAssistant"
alias repair_bt="sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport && sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport"
alias show-hidden-files="defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder"
alias hide-hidden-files="defaults write com.apple.finder AppleShowAllFiles FALSE;killall Finder"
alias o='open'

# Rails
_bundle_exec_rspec() {
  bin/rails db:migrate RAILS_ENV=test && bundle exec rspec $1 && osx-notify 'SPEC completed'
}
alias ber='_bundle_exec_rspec'
alias eber='APIPIE_RECORD=examples _bundle_exec_rspec'


alias b64="openssl base64 -in"
alias speedtest="curl -o /dev/null http://speedtest.sea01.softlayer.com/downloads/test100.zip"
alias webserver="python -m SimpleHTTPServer"
alias bs_server="browser-sync start --files=\"*\" --server --port 3331"
alias docker-env='eval \"$(docker-machine env default)\"'
alias youtube-dl-mp3='youtube-dl -citx --audio-format mp3'
alias pgadmin='/Applications/pgAdmin\ 4.app/Contents/MacOS/pgAdmin4'
alias pgadmin_stop='killall pgAdmin4'
alias tmux="tmux -2"
alias vi="vim"
alias qr="qrip"
alias new-pass="openssl rand -base64 30 | rg -e '[+=//]' -r ''"
alias new-pass-copy="openssl rand -base64 30 | rg -e '[+=//]' -r '' | pbcopy"
