# How to install

1. Pull the source code from repository.
2. Change current directory to project's root.
3. Install gems by executing command `bundle install`.
4. Please readme `How to test` section below to try it.

# How to test

NOTE that UI isn't implemented.
That's why it's possible to test only API.

**How to test:**

1. From source directory run application server with command `puma -p 3000`.
2. You can test `POST /play` endpoint with single parameter `choice` which accepts any string.
   Please see the CURL examples below.
   
# CURL examples

Request:
```bash
curl -d "choice=rock" -X POST http://localhost:3000/play
```

Response:
```json
{
  "user_choice":"rock",
  "robot_choice":"paper",
  "result":{
    "winner":"robot",
    "message":"paper beats rock"
  }
}
```

Request:
```bash
curl -d "choice=hammer" -X POST http://localhost:3000/play
```

Response:
```json
{
  "user_choice":"hammer",
  "robot_choice":"rock",
  "result":{
    "winner":"user",
    "message":"hammer beats rock"
  }
}
```

Request:
```bash
curl -d "choice=scissors" -X POST http://localhost:3000/play
```

```json
{
  "user_choice":"scissors",
  "robot_choice":"scissors",
  "result":{
    "winner":"tie",
    "message":"in this game scissors is the same as scissors"
  }
}
```