const fs = require('fs')
const recast = require('recast')
const ArgumentParser = require('argparse').ArgumentParser

var parser = new ArgumentParser()
parser.add_argument('--in')
const args = parser.parse_args()

const src = fs.readFileSync(args.in).toString()
console.log(src)
