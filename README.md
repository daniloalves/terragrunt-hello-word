# Terragrunt-Hello-World

The main advantage is become able to use a directory structure to organize your infrastructure and use only one command to execute all modules recursively.
Issue: Organize Terraform modules/files in accounts subfolders:
```
├── README.md
├── with_gruntwork
│   ├── accounts
│   │   ├── prod
│   │   │   ├── main.tf
│   │   │   └── terragrunt.hcl
│   │   └── qa
│   │       ├── main.tf
│   │       └── terragrunt.hcl
│   └── terragrunt.hcl
└── without_terragrunt
    └── accounts
        ├── prod
        │   └── main.tf
        └── qa
            └── main.tf
```

### Without_Terragrunt:
Is necessary execute `terraform init/plan/apply` each subfolder. If guess that you can solve it easier only adding one new stage in your pipeline, think about manage more than 100 accounts, each account with 80 applications and others resources like database, servers, etc. Your pipeline will be huge and difficult to maintenance.

### With_Terragrunt:
The only requirement to run all terraform code including all subfolders, enough create a `terragrunt.hcl` file for each module (that's a empty file). Now execute: `terragrunt run-all init/plan/apply`.

It's possible implement other features (https://terragrunt.gruntwork.io/docs/features) to keep a DRY code. But is necessary take care, because so far we are use terraform vanilla and terragrunt only to execute terraform code. If decide to use the Terragrunt's syntaxe and advanced features, you can don't use all terraform features.