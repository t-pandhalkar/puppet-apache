node default {
  notify {'mac':
    message => 'Hello world default scope' 
  }
}

node 'cent-main.fc2bbjtmyiwepoejnvtsaouj4c.bx.internal.cloudapp.net' {
  notify {'Hello world cent main':}
}
