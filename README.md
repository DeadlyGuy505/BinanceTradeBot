
# Binance Trade Bot
## Introduction
- Have you ever traded on Binance and lost track of your planned buys and sells?
- Have you missed setting a stop-loss because your buy order filled while you were asleep?
- Have you wished you could manage buy orders, take-profits, and stop-losses automatically?
- Have emotions like greed or fear ruined an otherwise solid trading plan?

**Then Binance Trade Bot is for you!**

Binance Trade Bot is a free, Python-based Telegram trading bot designed specifically for **Binance**.  
It allows you to define an unlimited number of automated trade sets that are executed on your behalf using the Binance API.

A trade set consists of:
- Buy or sell levels
- Trade amounts
- Optional stop-loss levels
- Optional take-profit targets

The bot keeps you informed via Telegram about:
- Filled orders
- Triggered stop-losses
- Trade progress
- Account balances

Breakout strategies (e.g. placing buy orders when a candle closes above a defined price) are supported as well.

**Focused, simple, and powerful — built for Binance traders.**

---

## Installation
There are several ways to install Binance Trade Bot.  
We **strongly recommend Docker**, as it ensures system-independent compatibility.

After installation, you will have a `user_data` folder containing:
- `APIs.json`
- `botConfig.json`

### With Docker
**Requires [Docker](https://docs.docker.com/get-docker/) to be installed.**

1. Create a new folder for Binance Trade Bot
2. Download `docker-compose.yml` into that folder
3. Open a terminal in that folder and run:

```

docker-compose run --rm binance-trade-bot --init

```

---

### With Pip
**Requires [Python 3.8+](https://www.python.org/downloads/).**

#### Windows
1. Download `install_and_init_bot_here.bat`
2. Place it in the folder where you want the bot installed
3. Double-click to execute

#### Linux / macOS
1. Install via pip:

```

python3 -m pip install binance-trade-bot

```

2. Initialize configuration files:

```

mkdir ~/binance-trade-bot
cd ~/binance-trade-bot
python3 -m binance_trade_bot --init

```

---

## Getting Started

### Required Tokens & Keys

#### 1. Create a Telegram Bot Token
- Start a chat with [@BotFather](https://t.me/botfather)
- Follow the official Telegram instructions
- Save the generated **bot token**

#### 2. Obtain Your Telegram User ID
- Message [@userinfobot](https://telegram.me/userinfobot)
- Save your numeric Telegram ID

#### 3. Create Binance API Keys
- Log in to Binance ? API Management
- Create a new API key
- Enable:
  - Spot trading
  - Reading account balances
- **Never enable withdrawals unless you fully understand the risks**

Save:
- API Key
- API Secret

---

## Configuration

### Interactive Configuration (Recommended)

#### Docker
```

docker-compose run --rm binance-trade-bot --config

```

#### Pip
```

python3 -m binance_trade_bot --config

````

---

### Manual Configuration
All configuration files are located in `user_data/`.

#### `botConfig.json`
- Insert:
  - `telegramAPI`
  - `telegramUserId`

#### `APIs.json`
Example:
```json
{
  "exchange": "binance",
  "key": "YOUR_API_KEY",
  "secret": "YOUR_API_SECRET"
}
````

---

## Starting the Bot

### Windows

* Double-click `startBot.bat`

### Linux / macOS

```
python3 -m binance_trade_bot
```

1. Open Telegram
2. Start a chat with your bot
3. Follow the interactive menus
4. Trade responsibly ??

---

## Updating the Bot

1. Stop the bot via Telegram (`Settings ? Stop Bot`)
2. Update:

### Windows

* Run `updateBot.bat`

### Linux / macOS

```
python3 -m pip install -U binance-trade-bot
```

### Docker

```
docker-compose pull
```

3. Restart the bot

---

## Help & Documentation

* Check the **Wiki** for advanced usage and examples
* Open a GitHub issue for bugs or feature requests

---

## Versioning

See available versions on the [GitHub tags page](https://github.com/yourusername/binance-trade-bot/tags).

---

## Authors

**Ben Klaus** – Initial development and maintenance
 https://github.com/DeadlyGuy505
---

## License

This project is licensed under the **GPL-3.0 License**.
See the [LICENSE](LICENSE) file for details.

---

## Planned Features

* Instant market buy/sell
* Trailing stop-loss
* Risk-based position sizing
* Multi-timeframe breakout strategies
* Expanded Telegram analytics
* Web dashboard

**Trade smart. Automate responsibly.**

