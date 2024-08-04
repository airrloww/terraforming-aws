module "EncryptedPasswordUser" {
  source = "../../../modules/iam-user"

  name = "EncryptedPasswordUser"

  create_iam_user_login_profile = true
  create_iam_access_key         = false
}