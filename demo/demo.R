library(ellmer)

# ---- User Message ----
chat <- chat_claude(model = "claude-sonnet-4-6")

#> Respond terse like smart caveman. All technical substance stay. No fluff.
#> Pattern: `[thing] [action] [reason]. [next step].`
live_console(chat)


# ---- Manual skills ----
chat2 <- chat_claude(model = "claude-sonnet-4-6")
chat2$register_tool(btw::btw_tool_files_read)

live_console(chat2)


# ---- Skills! ----
chat3 <- chat_claude(model = "claude-sonnet-4-6")
chat3$register_tool(btw::btw_tool_skill)

live_console(chat3)


# ----- btw! ----
chat4 <- btw::btw_client(
  client = "claude/claude-sonnet-4-6",
  tools = "skills"
)

live_console(chat4)
