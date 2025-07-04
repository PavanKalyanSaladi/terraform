HCL Syntax:

\<block> \<parameters> { <br>
    key1 = value1   <br>
    key2 = value2   <br>
}

Example1:- Local.tf

local=provider, file=resource

Block    Resource    Resource   <br>
Name       Type        Name     <br>
  |         |           |       <br>
resource "local_file" "pets" {  <br>
    filename = "/path/filename.extention"  |   Arguments    <br>
    content = "........"                   |        <br>
}

Example2:- aws-ec2.tf

resource "aws_instance" "webserver" { <br>
    ami = "ami-0dchdjd1n1nj"        <br>
    instance_type = "t2.micro"      <br>
}

Example3:- aws-s3.tf

resource "aws_s3_bucket" "data" {   <br>
    bucket = "webserver-bucket-org-2207" <br>
    acl = "private"     <br>
}

Terraform Workflow:-
1. create config/state file as \<name>.tf
2. terraform init - This command will check the config file and initializes working directory containing .tf file - Make use of local provider and download plugin local to perform next actions.
3. terraform plan - This command will show the actions carried by terraform to create/modify the resources used by the configuration file. Similar to diff in GIT. This command is only to review the actions not to perform them.
4. terraform apply - This command will show the execution plan once again and ask the confirmation as 'yes' from the user to proceed.

5. terraform show - This command is used to display the resources in the configuration file.

**Note**: How to know what are the providers available, what are the exact parameters that needs to be passed? https://registry.terraform.io/namespaces/hashicorp.

---

**Configuration Directory:-** <br>
When you have multiple .tf files to provision your infra or system, terraform offers to create such naming convention files that are easy to handle - <br>
1. main.tf - Executes the resource configuration
2. variables.tf - Stores the defined variables that can be usable in main.tf
3. outputs.tf - Writes the output data from configuration file
4. provider.tf - Configures the Provider that needs to be installed as plugin

---

**Variable Precedence** <br>
1. ENV (export TF_KEY=VALUE)  -> Lowest
2. *.tfvars
3. *.auto.tfvars
4. terraform -e "key=value"   -> Highest
