# Godot PKGBUILDS to ArchWay Distributions

## Table of Contents
- [Godot PKGBUILDS to ArchWay Distributions](#godot-pkgbuilds-to-archway-distributions)
  - [Table of Contents](#table-of-contents)
  - [Versions Package](#versions-package)
  - [Package in PKGBUILDS](#package-in-pkgbuilds)
    - [Source](#source)
      - [Godot 4 / Godot](#godot-4--godot)
      - [Godot 3 / Godot LTS](#godot-3--godot-lts)
      - [Godot 2](#godot-2)
      - [Godot 1](#godot-1)
    - [GDScript](#gdscript)
      - [Godot 4 / Godot](#godot-4--godot-1)
      - [Godot 3 / Godot LTS](#godot-3--godot-lts-1)
      - [Godot 2](#godot-2-1)
      - [Godot 1](#godot-1-1)
    - [Mono](#mono)
      - [Godot 4 / Godot](#godot-4--godot-2)
      - [Godot 3 / Godot LTS](#godot-3--godot-lts-2)

## Versions Package
| Package  | Godot 4 / Godot | Godot 3 / Godot LTS | Godot 2          | Godot 1 |
|:--------:|:---------------:|:-------------------:|:----------------:|:-------:|
| Latest   | 4.2d4           | 3.6b3               | ―                | ―       |
| Dev      | 4.2d4           | ―                   | ―                | ―       |
| Alpha    | 4.0a17          | 3.2a3               | ―                | ―       |
| Beta     | 4.1b3           | 3.6b3               | ―                | ―       |
| RC       | 4.1rc3          | 3.5rc8              | ―                | ―       |
| StableRC | 4.1.1rc1        | 3.5.3src1           | 2.1.7src20200815 | ―       |
| Stable   | 4.1.1           | 3.5.2               | 2.1.6            | 1.1     |

## Package in PKGBUILDS

### Source

#### Godot 4 / Godot
| Package | Latest | Dev | Alpha | Beta | RC | StableRC | Stable |
|:-------:|:------:|:---:|:-----:|:----:|:--:|:--------:|:------:|
| src     | X      | X   | X     | X    | X  | X        | X      |

#### Godot 3 / Godot LTS
| Package | Latest | Alpha | Beta | RC | StableRC | Stable |
|:-------:|:------:|:-----:|:----:|:--:|:--------:|:------:|
| src     | X      | X     | X    | X  | X        | X      |

#### Godot 2
| Package | Latest | StableRC | Stable |
|:-------:|:------:|:--------:|:------:|
| src     | X      | X        | X      |

#### Godot 1
| Package | Latest | Stable |
|:-------:|:------:|:------:|
| src     | X      | X      |

### GDScript

#### Godot 4 / Godot
| Package     | Latest | Dev | Alpha | Beta | RC | Stable |
|:-----------:|:------:|:---:|:-----:|:----:|:--:|:------:|
| standard    | X      | X   | X     | X    | X  | X      |
| standard32  | X      | X   | X     | X    | X  | X      |
| templates   | X      | X   | X     | X    | X  | X      |
| lib         | X      | X   | X     | X    | X  | X      |
| web         | X      | X   | ―     | X    | X  | X      |
| headless    | ―      | ―   | ―     | ―    | ―  | ―      |
| server      | ―      | ―   | ―     | ―    | ―  | ―      |
| osx         | X      | X   | X     | X    | X  | X      |
| win32       | X      | X   | X     | X    | X  | X      |
| win64       | X      | X   | X     | X    | X  | X      |
| android apk | X      | X   | X     | X    | X  | X      |
| android aab | X      | X   | ―     | X    | ―  | ―      |

#### Godot 3 / Godot LTS
| Package    | Latest | Alpha | Beta | RC | StableRC | Stable |
|:----------:|:------:|:-----:|:----:|:--:|:--------:|:------:|
| standard   | X      | X     | X    | X  | X        | X      |
| standard32 | X      | X     | X    | X  | X        | X      |
| templates  | X      | X     | X    | X  | X        | X      |
| lib        | X      | X     | X    | X  | X        | X      |
| web        | X      | ―     | X    | X  | X        | X      |
| headless   | X      | ―     | X    | X  | X        | X      |
| server     | X      | ―     | X    | X  | X        | X      |
| osx        | X      | X     | X    | X  | X        | X      |
| win32      | X      | X     | X    | X  | X        | X      |
| win64      | X      | X     | X    | X  | X        | X      |
| android    | X      | X     | X    | X  | X        | X      |

#### Godot 2
| Package    | StableRC | Stable |
|:----------:|:--------:|:------:|
| standard   | X        | X      |
| standard32 | X        | X      |
| templates  | ―        | ―      |
| lib        | ―        | ―      |
| web        | ―        | ―      |
| headless   | X        | X      |
| server     | X        | X      |
| osx        | X        | X      |
| win32      | X        | X      |
| win64      | X        | X      |
| android    | ―        | ―      |

#### Godot 1
| Package    | Stable |
|:----------:|:------:|
| standard   | X      |
| standard32 | X      |
| templates  | ―      |
| lib        | ―      |
| web        | ―      |
| headless   | ―      |
| server     | X      |
| osx        | X      |
| win32      | X      |
| win64      | X      |
| android    | ―      |

### Mono

#### Godot 4 / Godot
| Package     | Latest | Dev | Alpha | Beta | RC | StableRC | Stable |
|:-----------:|:------:|:---:|:-----:|:----:|:--:|:--------:|:------:|
| standard    | X      | X   | X     | X    | X  | X        | X      |
| standard32  | X      | X   | X     | X    | X  | X        | X      |
| templates   | X      | X   | X     | X    | X  | X        | X      |
| lib         | ―      | ―   | ―     | ―    | ―  | ―        | ―      |
| web         | ―      | ―   | ―     | ―    | ―  | ―        | ―      |
| headless    | ―      | ―   | ―     | ―    | ―  | ―        | ―      |
| server      | ―      | ―   | ―     | ―    | ―  | ―        | ―      |
| osx         | X      | X   | X     | X    | X  | X        | X      |
| win32       | X      | X   | X     | X    | X  | X        | X      |
| win64       | X      | X   | X     | X    | X  | X        | X      |
| android apk | ―      | ―   | ―     | ―    | ―  | ―        | ―      |
| android aab | ―      | ―   | ―     | ―    | ―  | ―        | ―      |

#### Godot 3 / Godot LTS
| Package    | Latest | Alpha | Beta | RC | StableRC | Stable |
|:----------:|:------:|:-----:|:----:|:--:|:--------:|:------:|
| standard   | X      | X     | X    | X  | X        | X      |
| standard32 | X      | X     | X    | X  | X        | X      |
| templates  | X      | X     | X    | X  | X        | X      |
| lib        | X      | X     | X    | X  | X        | X      |
| web        | ―      | ―     | ―    | ―  | ―        | ―      |
| headless   | X      | ―     | X    | X  | X        | X      |
| server     | X      | ―     | X    | X  | X        | X      |
| osx        | X      | X     | X    | X  | X        | X      |
| win32      | X      | X     | X    | X  | X        | X      |
| win64      | X      | X     | X    | X  | X        | X      |
| android    | ―      | ―     | ―    | ―  | ―        | ―      |
