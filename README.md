# PLAT

A physics-based platformer game project built for the PICO-8 fantasy console. The idea behind this project is to create a physics-based platforming experience, complete with jumping, gravity, and collision detection. The original impetus was to see if Mario-style movement was possible by implementing controls which affect only velocity; quickly, I shifted to wonder if it is possible without.

## Features (So Far)
- **Player Movement**: Move left and right using the arrow keys.
- **Jumping**: Press 🅾️ (Z key) to jump.
- **Gravity**: The player is affected by gravity, making them fall when not grounded.

## Controls
- **⬅️ / ➡️**: Move left and right.
- **🅾️ (Z)**: Jump.

## Current Progress
The following core systems have been implemented:
1. **Player Movement**: Horizontal and vertical movement with velocity.
2. **Gravity**: Affects the player when not grounded.

## Setup
1. Open PICO-8.
2. Load the cartridge file (`plat.p8`).
3. Press `CTRL+R` to run the game.

## Next Steps
- Introduce a basic tilemap
- Add  collision handling (e.g., ceilings, walls).
- Introduce platforms and interactive objects.
- Expand the tilemap to create a proper level.
