# Production Deployment Flow

## Problem

Manual deployment is risky because:
- Direct editing on live server
- Multiple developer conflict
- Risk of downtime
- No rollback option

## Solution

Implemented production-style deployment:

GitHub → Deploy Script → /var/www/releases → Symlink → Apache

## Directory Structure

/var/www/
    releases/
        v1
        v2
    current → symlink to active release

## Deployment Process

1. Create new timestamp directory
2. Clone repository
3. Update symlink
4. Apache serves from current

## Benefits

- Zero downtime switching
- Easy rollback
- Clean release management
