#!/usr/bin/env bash
# Render が参照する build スクリプト（Rails 用）

# データベースがあればマイグレーション
bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

# 必要ならアセットプリコンパイル
bundle exec rake assets:precompile