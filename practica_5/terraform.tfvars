virginia_cidr  = "10.10.0.0/16"
ohio_cidr = "10.20.0.0/16"

subnets = {
  public_virginia  = "10.10.0.0/24"
  private_virginia = "10.10.1.0/24"

  public_ohio      = "10.20.0.0/24"
  private_ohio     = "10.20.1.0/24"
}

amis = {
  virnigia = "ami-0341d95f75f311023"
  ohio = "ami-0199d4b5b8b4fde0e"
}

tags = {
  "env" = "dev"
  "owner" = "igortega"
  "IAC" = "Terraform"
  project = "cthulhu"
}

sg_ingress_cidr = "0.0.0.0/0" 

enable_monitoring = false

ingress_port_list = [22, 80, 443]

ssh-key = "-----BEGIN RSA PRIVATE KEY-----\nMIIEowIBAAKCAQEAzH749JK1/Y7EDynn29/DvJrO+UZxdm6eTZqgSy3aSWTsXYh+\ng/x7IwmThnUbmnhoockR3VdOFlpB9NifILR/u5t7onTtHsvxtGzWW11PBQZEKYOg\nAHH/x03yl+2nkSzGL8Hc61gUC9ZmQj4rSxvJmVB++LjgjpEgaDXZijfxFEKaQxUm\n1dmzn1RRYhNBC+X+ZWOV+pnKZKEDb796ctpxersSRyG2z/mdisQqcy+Lt7vwe5zd\nH76XtxNgz4z9unSRSY5+ynd1J0pTR0SKFx/fm42bzoBVVYILmP1S64z+/ZZYRBJB\nxWplYD/iXhjSzA0cos1j1bhpZwCrXsVXfrYXUwIDAQABAoIBAERo5ZfLzJ36OJRq\nDGp9vNlHYJ37dtGLx+FmLOF5gWC0Jm5Tzx8QQ5FBDt0YKBfQ2A/nV9aX8kOABjiG\njxU9zM1SAlYij4CR8VXOYxdFa73ejsbkhY4glNRzuwggNMJYHCS10dXZLTuYibT3\nXzxNG2/ygcdq8ZQ/8HtsKE4Y0MlZtTivASRj4USsTYecVrjW74TQJWXVKdZ6etzN\nRaRQBjakSNX9P6Eoc7r6K4+62U3V5lusxNq3TqAzFMfS3ZkccYhhZIb2pzYgATLl\nXGwiYVJLr0/rq0K03AaHheo6kWjQ4IjdSi6NGKIIXRBmxmR93IKUcw3jmRBTHjtP\nTyaM+YECgYEA8bShhBtxHW1kkAVVlB4FWEiUYdf61uaOM0XmEV92kctkcxdVojEj\n7i/fO8Sd9vDWBPkNF9tmJbbr4CtHF2Rzo0N8WY3adW0ydVHgxNV23JtGoocNj1dU\n2XwUttb6MQanEKkll2cJqrf+Yq9yVh8SiPKLocJdBn1ppZOTGWev6bECgYEA2Jb/\nFLMoNJJGOwjVbAopmcjtiYn0AhG1we0g+8Nom735onnxeUrO5vFchNJ1Q8eDvXBP\nNzDd6u4m+i+CmhxX9dxfzuselb13HC9Srw2kjr1tlN0zxoaPG6dyP9xVM9bd+3/c\nJHZM13BWD2/U4YY1jk/jt93A2IVm1ot4Xg/4TkMCgYAB+hA4HGFYdESWSPTiOTyh\n9DYCdtm+WDRhhvjSu40ktB0mM9KneO9qS0nwGzOPiXi2obLRtyGmvVBAjRoPvuqT\nM0IZGWfn/fSjsP+9nGFUfJCfU6twuK4g+TrSI//31q4XHMsJ6fXSR570/6pXuflU\n1Wb+86//FZd/my1gz9BIgQKBgBGlA3TRP5ZA0F3g01ow3cC8gLVyuqEshi0dP1Gj\nUrNVX6/f1U83S/G+efYMGyeBancVXi612W5ZJm29Txt08amC4X8+4kf6nmh6ZncC\nWoSSZAn7l0s2DRSIqKMRNRO7Dmx9txZ1WL84VJp/Vs1knJpSYc/JzfsVqxIRXKX1\nERp3AoGBAKtCfN1vXiM5gQuuT4DsgU7x4Eu4Ed/OL3IJ9S5q/KYEACfA5yz6pnpi\n0LywrzOOuYIL/v+AQYguQxXdwtp23S6kiyo+jktDGFP375VciFIdb5N/1xTwALZe\no75Xb1l071J9Wu1NOrhTOQmHSuTF1GiGTHiyo58ya55psgcdo7Jk\n-----END RSA PRIVATE KEY-----"