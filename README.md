# PLAT

A physics-based platformer game project built for the PICO-8 fantasy console. The idea behind this project is to create a physics-based platforming experience, complete with jumping, gravity, and collision detection. The original impetus was to see if Mario-style movement was possible by implementing controls which affect only velocity; quickly, I shifted to wonder if it is possible without.

## Features (So Far)
- **Player Movement**: Move left and right using the arrow keys.
- **Jumping**: Press 🅾️ (Z key) to jump.
- **Gravity**: The player is affected by gravity, making them fall when not grounded.
- **Tilemap-Based Collision**: The player interacts with a tile-based map, colliding with solid tiles.

## Controls
- **⬅️ / ➡️**: Move left and right.
- **🅾️ (Z)**: Jump.

## Current Progress
The following core systems have been implemented:
1. **Player Movement**: Horizontal and vertical movement with velocity.
2. **Gravity**: Affects the player when not grounded.
3. **Collision Detection**: The player lands on solid tiles without overlapping them.
4. **Tilemap Rendering**: A simple map with a solid floor is rendered as the game world.

## Setup
1. Open PICO-8.
2. Load the cartridge file (`plat.p8`).
3. Press `CTRL+R` to run the game.

## Next Steps
- Add  collision handling (e.g., ceilings, walls).
- Introduce platforms and interactive objects.
- Expand the tilemap to create a proper level.
