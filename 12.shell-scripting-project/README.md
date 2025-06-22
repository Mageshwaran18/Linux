```markdown
# Project Link 
``https://youtu.be/8nx_RLaX5gE?feature=shared``

## Check if the Required Number of Arguments Are Passed

```bash
if [ $# -ne 2 ]
```

* `#` → number of command-line arguments passed.
* `-ne` → "not equal".
* `2` → expected number of arguments.

**So:**
This checks if the number of arguments is **not equal to 2**.
Used to validate input.

Instead of this we can also write:

```bash
if (( $# != 2 ))
```

This also checks whether the user entered two arguments or not.
`(())` represents that we are going to perform the arithmetic operation over there.

* `exit 1` → States to exit the script with an error status.

---

## Check if the AWS CLI is Installed

When connecting directly to AWS services to generate reports, it requires significant overhead due to authentication and authorization processes.

Instead, this script utilizes **AWS CLI**, which handles the authentication and authorization for API services automatically.

**Flow:**

```
aws_resource_list.sh -> AWS CLI -> AWS Service APIs
```

### Script Snippet:

```bash
if ! command -v aws &> /dev/null
```

* `command -v aws` — `command` is a built-in used to check info about a command.
* `-v` (verbose) shows the path of the command if it exists.
* `!` (Logical NOT)

  * Negates the result.
  * If `command -v aws` succeeds (returns 0), `!` makes it false.
  * If `command -v aws` fails (returns non-zero), `!` makes it true.
* `&> /dev/null`

  * Redirects both **stdout** and **stderr** to `/dev/null`, so no output is shown.
  * `/dev/null` is a "black hole" — it discards whatever is sent to it.

## To install aws cli

- install unzip first 

```bash
sudo apt install unzip
```

- install aws cli 

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## Check if the AWS CLI is Configured

### What is `.aws`?

`.aws` is a hidden directory in your home folder created when you:

- Install and configure AWS CLI using `aws configure`.

### It Stores:

- `credentials` file → your AWS **Access Key** and **Secret Key**.
- `config` file → your default **region** and **output format**.

---

### Check if `.aws` Exists

```bash
[ -d ~/.aws ]
```

* `-d` → checks if it is a **directory**.
* `~/.aws` → the path to `.aws` folder in the **home directory**.

✅ So:
It checks if the `.aws` directory exists in your home, which means AWS CLI is likely configured.

## To configure AWS

- Go to Security Credentials → Go to the Access Key section.
- Get the Access Key and the Secret Key.
- Then run the following command and enter the respective details and keys:

```
aws configure
```

## Switch cases
### `case` in Shell Scripting

Used for **multi-condition checks**, like `switch` in other languages.

### Syntax:

```bash
case $variable in
  pattern1)
    # commands
    ;;
  pattern2)
    # commands
    ;;
  *)
    # default case
    ;;
esac
```

### Example:

```bash
echo "Enter a number:"
read num

case $num in
  1)
    echo "One"
    ;;
  2)
    echo "Two"
    ;;
  *)
    echo "Other number"
    ;;
esac
```

### Key Points:

* `;;` ends each case.
* `*)` is the default case.
* `esac` ends the switch block (`case` reversed).

## This shell script is used to list all the instances , dbs , buckets  which are used / running in particular regions
```