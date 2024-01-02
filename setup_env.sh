#!/bin/bash

echo "op-ai-monorepoの.envファイルの作成"
cp ./.env.example ./.env

echo "op-ai-monorepo/clientの.env.localの作成"
cp ./client/.env.example ./client/.env.local

echo "op-ai-monorepo/serverの.envの作成"
cp ./server/.env.example ./server/.env

echo "op-ai-monorepo/ai-lab/.envの作成"
cp ./ai-lab/.env.example ./ai-lab/.env
