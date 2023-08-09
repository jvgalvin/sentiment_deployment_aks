locals {
  instructors = [
    "winegarj@berkeley.edu",
    "mkarch@berkeley.edu",
    "viswanathan@berkeley.edu",
    "edbrown@berkeley.edu",
    "muchovej@berkeley.edu",
    "luis.villarreal@berkeley.edu",
    "dantemalagrino@berkeley.edu"
  ]

  students = [
    "mohamed.elghetany@berkeley.edu",
    "samqvha@berkeley.edu",
    "amanuelg@berkeley.edu",
    "deepikamaddali@berkeley.edu",
    "paul590@berkeley.edu",
    "jhsmith@berkeley.edu",
    "jujhar.bedi@berkeley.edu",
    "iraju@berkeley.edu",
    "anchan@berkeley.edu",
    "rchimel@berkeley.edu",
    "daniel.collins@berkeley.edu",
    "mnd476@berkeley.edu",
    "zfdong@berkeley.edu",
    "ed.elghetany@berkeley.edu",
    "jgalvin@berkeley.edu",
    "chgrimes@berkeley.edu",
    "sidgupte@berkeley.edu",
    "qvha@berkeley.edu",
    "jooyeonhahm@berkeley.edu",
    "hjesse92@berkeley.edu",
    "yhejazi@berkeley.edu",
    "rh1330@berkeley.edu",
    "keith.hutton@berkeley.edu",
    "allanjiang@berkeley.edu",
    "sushant.joshi@berkeley.edu",
    "tkeech@berkeley.edu",
    "taekim@berkeley.edu",
    "jlange@berkeley.edu",
    "celee5@berkeley.edu",
    "francis.j.lee@berkeley.edu",
    "iris.lew@berkeley.edu",
    "nankli@berkeley.edu",
    "limdo@berkeley.edu",
    "addali@berkeley.edu",
    "chase_madson@berkeley.edu",
    "dantemalagrino@berkeley.edu",
    "jessmatthews@berkeley.edu",
    "jcmeyer@berkeley.edu",
    "francisco@berkeley.edu",
    "morinlandon@berkeley.edu",
    "naqvie@berkeley.edu",
    "davidnoble@berkeley.edu",
    "shaziakn@berkeley.edu",
    "knyakurimwa@berkeley.edu",
    "malay_patel@berkeley.edu",
    "neilprabhu@berkeley.edu",
    "arwinrahmatpanah@berkeley.edu",
    "aranjan@berkeley.edu",
    "fnriquel@berkeley.edu",
    "josephroberts@berkeley.edu",
    "erica.schleimer@berkeley.edu",
    "sestephenson@berkeley.edu",
    "eric.sun@berkeley.edu",
    "sysung98@berkeley.edu",
    "emeraldswei@berkeley.edu",
    "mariusz@berkeley.edu",
    "anuelg@berkeley.edu",
    "torrey@berkeley.edu",
    "dzadvornov@berkeley.edu",
    "mberes4d@berkeley.edu",
    "sarah-wang@berkeley.edu",
    "dave.zack@berkeley.edu",
    "cvetter@berkeley.edu",
    "a.adam.saleh@berkeley.edu",
    "hshi18@berkeley.edu",
    "jadlewis@berkeley.edu",
    "billyfong@berkeley.edu",
    "ivykamanchan@berkeley.edu",
    "schamiraju@berkeley.edu"
  ]

  team_mapping = [
    {
      "team" : "team1",
      "member" : "mai.la@berkeley.edu"
    }
  ]
  team_names     = tolist(toset([for member in local.team_mapping : member.team]))
  team_members   = tolist(toset([for member in local.team_mapping : member.member]))
  team_role_list = toset([for member in local.team_mapping : "${member.team}--${member.member}"])
}

locals {
  email_to_id = { for user in data.azuread_users.users.users : user.mail => user.object_id if user.mail != "" }
}
