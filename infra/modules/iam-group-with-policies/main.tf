############
# IAM groups
############

module "iam_group_superadmins" {
  source = "../../../modules/iam-group-with-policies"

  name = "SuperAdmins"

  group_users = []

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]
}

module "iam_group_readonlyusers" {
  source = "../../../modules/iam-group-with-policies"

  name = "ReadOnlyUsers"

  group_users = [
    module.readonly_user.iam_user_name,
  ]

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/ReadOnlyAccess",
  ]
}


################
# ReadOnly users
################

module "readonly_user" {
  source = "../../../modules/iam-user"

  name = "readonly_user"

  create_iam_user_login_profile = true
  create_iam_access_key         = false
}