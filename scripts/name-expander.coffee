# Expands a message to a named group of people into their individual names
#
# merlin: <your message>

josiah = "Jkiehl"
cliff = "cdickerson"
ivey = "michael.ivey"
chong = "Chong Yan"
jamie = "Jamie Winsor"
jesse = "Jesse Howarth"
kyle = "kallan"
andrew = "Andrew Garson"
justin = "Justin Campbell"
trotter = "Trotter Cashion"
afeng = "Aaron Feng"
bennett = "bsprugel"
akwan = "Alan Kwan"
marksoho = "Mark Soho"
nmathrani = "Neeraj Mathrani"

noc_members = ["Carter1", "Cames1", "jdowns", "jdowns1", "jtramullas", "nstuhring", "ctrytten1", "ctrytten", "akim", "nsanches", "jkim", "ebednik", "nhooper"]

dert_mermbers = ["CDERCKERSERN", "MAHCHERLERVER", "JKERL", "JERMAH WERNSER", "CHIN YERN", "KERLERN", "ERNDRERW GERSERN", "JERSTEN CERMPBELL"]

build_members = ["mvuong", "mstewart", "jromigh", "pmckeown", "pmckeown2", "pmckeown_home2", "hzhang", "helen"]

merlin_remote_members = [
  cliff,
  ivey,
  justin
]

merlin_lax_members = [
  josiah,
  jamie,
  chong,
  kyle,
  andrew,
  bennett
]

chef_repo_mergers = [
  josiah,
  ivey,
  cliff
]

mashion_devs = [
  trotter,
  afeng
]

merlin_members = merlin_remote_members.concat merlin_lax_members

devinf_members = [
  cliff,
  akwan,
  marksoho,
  nmathrani,
  chong,
  "akwan",
  "mark.soho",
  "nmathrani"
]


sysadmin_members = ["ehays", "fnenz2", "fnenz", "lbernat", "Stephen Couratier", "kying", "hvellanki", "bnessler"]

neteng_members = ["Paul Davis", "amills", "jhorstman", "sean cline", "CheechandMChong"]

dba_members = ["awhitwham", "agentile", "dminor", "tlekai", "thomas.lekai", "dryan", "dennis.ryan", "rbyrd"]


module.exports = (robot) ->
  robot.hear /^(merlern|dert)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send dert_mermbers.join(", ") + ": ^^"

  robot.hear /^(merlin|dat)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_members.join(", ") + ": ^^"

  robot.hear /^(merlin|dat)-lax( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_lax_members.join(", ") + ": ^^"

  robot.hear /^(merlin|dat)-remote( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_remote_members.join(", ") + ": ^^"

  robot.hear /^(mashion)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send mashion_devs.join(", ") + ": ^^"

  robot.hear /^@?(noc)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
    msg.send noc_members.join(", ") + ": ^^"

  robot.hear /^mergers:(.+)/i, (msg) ->
    msg.send chef_repo_mergers.join(", ") + ": ^^"

  robot.hear /^@?(build)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
    msg.send build_members.join(", ") + ": ^^"

  robot.hear /^(di|devinf)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send devinf_members.join(", ") + ": ^^"

  robot.hear /^@?(sysadmin)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
    msg.send sysadmin_members.join(", ") + ": ^^"

  robot.hear /^@?(ops)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
    msg.send sysadmin_members.join(", ") + ": ^^"

  robot.hear /^@?(neteng)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
    msg.send neteng_members.join(", ") + ": ^^"

  robot.hear /^@?(dba)( team| dudes| guys)*(:| )(.+)/i, (msg) ->
    msg.send dba_members.join(", ") + ": ^^"
