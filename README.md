# 🌐 Terraform Config for Creating an S3 Bucket Manged by a VCS Driven HCP Workspace🚀

This repo contains a Terraform configuration that creates an **S3 bucket** for state management and integrates it with a **VCS-driven HCP Workspace**. 
Manage your infrastructure like a pro with seamless version control and reliable state storage! 🛠️📦

---

## ✨ Features
- ☁️ **HCP Workspace Integration**: Centralized workspace for managing Terraform runs via HashiCorp Cloud Platform.
- 🔗 **VCS-Driven Workflow**: Push code to your favorite version control platform to trigger changes.

---

## 📋 Requirements

- 🟢 **Terraform**: Version `>= 1.5`
- 🟡 **AWS Credentials**: Configured locally or via IAM roles.
- 🟣 **HCP Account**: Permissions to create/manage workspaces required.
- 🟠 **VCS Provider**: GitHub, GitLab, or other HCP-supported providers.

---

## 🚀 Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/TerraformTestLab/HelloS3Vcs.git
   cd your-repo-name
   ```
2. **Initialize Terraform:**
   🛠️ Start your journey here!
   
   Run this to fetch required providers/modules:
   ```bash
   terraform init
   ```
   📥 Modules incoming!

3. **Review and Apply Configuration:**
   - 🧐Preview your changes:
   ```bash
   terraform plan
    ```
   - ✅ Apply your configuration:
    ```bash
    terraform apply
    ```

4. **Connect HCP Workspace:**

    - 🌐 Login to the HCP portal and link your workspace to the VCS repo.
    - 🎯 Configure it to use the S3 bucket for backend state.


## 📤 Outputs

| 📛 Name            | 📖 Description                     |
|--------------------|------------------------------------|
| `bucket_arn`       | 🪣 ARN of the created S3 bucket    |
| `bucket_name`      | 🏷️ Name of the created S3 bucket  |
| `hcp_workspace_id` | 🆔 ID of the created HCP workspace |



## 🔍 Notes

-⚠️ **AWS Credentials**: Ensure they have permissions for S3 and IAM. 
-🔗 **VCS Repo:** Link your repo to HCP before running Terraform changes.

## 🤝 Contributing

🎉 Contributions welcome! Submit issues or pull requests to make this even better. 💪

## 📜 License

This project is licensed under the MIT License. 🪪

## 👥 Authors

🖱️ @sujaysamanta(https://github.com/sujaysamanta)

