#!/bin/bash

# op-ai-monorepo/.envの作成
cp .env.example .env

# op-ai-monorepo/client/.env.localの作成
cd client
cp .env.example .env.local
cd ..

# op-ai-monorepo/server/.envの作成
cd server
cp .env.example .env
cd ..

# op-ai-monorepo/ai-lab/.envの作成
cd ai-lab
cp .env.example .env
cd ..
