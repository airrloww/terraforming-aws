module "iam_group_superadmins" {
  source = "../../../modules/iam-group-with-policies"

  name = "superadmins"

  group_users = []

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess",
  ]
}

module "iam_group_readonlyusers" {
  source = "../../../modules/iam-group-with-policies"

  name = "ReadOnlyUsers"

  group_users = []

  custom_group_policy_arns = [
    "arn:aws:iam::aws:policy/ReadOnlyAccess",
  ]
}