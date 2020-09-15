import argparse


# transforms a string to lower case
def to_lower_case(txt):
    return txt.lower()


# configuring arg parser
parser = argparse.ArgumentParser(description='Simple python script that transform the content of a file to  lower case')

parser.add_argument('-input', '-in', metavar=' example/example.txt', required=True,
                    help='Directory where the original file is located')
parser.add_argument('-out', metavar=' example/example.txt', type=str, nargs='?', default="No",
                    help='Directory where the output will be stored')
args = parser.parse_args()

# reading txt
f = open(args.input, "r")
upperText = f.read()

if args.out == "No":
    print(to_lower_case(upperText))
else:
    f = open(args.out, "w")
    f.write(to_lower_case(upperText))
    f.close()
