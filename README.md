## Ugly Code

### SND A2联合任务LUA脚本

#### Autohook 预设

- 基于 https://github.com/PunishXIV/AutoHook/wiki/Cosmic-Exploration#bsmfsh-a-2-processed-aquatic-metals-cosmic-exploration 修改
  - 700GP才抛竿
  - 14条鱼自动结束

```
AH4_H4sIAAAAAAAACtVXS2/bRhD+L3smCz6Wz5ui2q4BOTUiBT0YPSy5Q2lhiqssl4ldQ0ACFGhzKFAgBYICRZFLgV576Kn9O3Wrf1EsHxJJSXYTCK17k2Z3vvnm487O7A0aFJIPSS7zYTJF4Q06ykiUwiBNUShFARpSiyOWgVo8nWZcwBnn8QyFCUlz0GoH2mw/pSi0/EBDJ4vJTEA+4ylFoWcYGjoXjAsmr1Foaug0P7qK04IC3ZgVwrKKWMe4QeUPqwyukF2/h2z2kO+GLjECr+Nh3EtmOCvmDQNsGrhHwe9RaLx4mkIsN6J2NMKmYba9rPtZcEEZSffgmZbrBm1AXLsds3x2dA15KwGnl4DjdBJwm29ALmE8Y4l8RFiZhjLkjWEsSXyZo9CpVXX9bdw2alCjnhPJIIuhxcft+7ldQa3GVbAvYEhkdTKaqH1v3+9627X3ZEZSRi7zY/KcCwXQMTTp2FrX/gRi/hwECk0l0q7D7vrqRLQCNvo9YtMTMi8THWTTFETeBFEfm6LQ9gzcZ291oPzlUkNHV1KQTnmuCagPMeHjF2RxmsmCScazE8KyRh7d1NCoEHAGeU6mgEKENPS45IRu375DNcD1AlCoZNoBN+K5/FC4cwE57OaHdLRnvQpYrm/ojBcQS0HSYSEEZPIwOfZAD5XpTq5b+e4MXu465iKGssJekEXzoUsjVdayZpzAcbT6VI0lX6giZ9l0LGFR3q6bJOuTNxAHya2NVpJ9mrFnBShYFNueHXgR1eMAAh1jD+sR9QIdx7bpRUFECTXRUkMjlstPExUjR+HFTRlN8V/zC4I7CL5+efvD69Uvv69++nWL6WMu5iT9hPNLhdVcNJ8BKf8rew5yXUGd/lUvtiWvTRU8Nj11gTWYYyl4Nj0AqmG3UEcwhYwScb2p9D0IEzYH0bsLzli2XlKX5keGhlTn2rVX2bv7XbV9F7mPeRGl94nYcbTcYO13r1B7PTti7HE+I1ftlLdSqPCe5jARbFGJ2ShQWd4rLc+xlCCV53sm1vHdSu3f+JwNBXVdDBIJYkiK6UyO2Fw1d7Na6N8j5fBXiGp6UD9abbLqYE7QH4fuHKjUDNbc9E2hPoFnBRNAx5LIQk0Uasj7n1fvIYAfcuXtcH5QFfVP3f/zamg1UOxaBg4SU4cIuzqOSaITn1DdTMzEokbkRzRAy8+bDlo/kS7WhqqJXtygdjfFTmB6+/vp6qtvbt+++/O3N7c/frn6/ufVm1edrmpuS9Sc2D3KYSUFZJLFJFV6KR7VjsGcF1lL4ZpdfwC2u48RXzEoREJiGKeqXtZp9V8bVu8Z5iw19GCekZuBDH3gGKZ8lWWoVCwFbA9m9Timflbmzbbtk2xYuHPwIuImMTVcPQncRMexBbrvE6yDGfg+0MgzXKs8eBV0TXJg/fXquz++/bo3BRIvNsFOdApGrGMPLN3HlqNb2Etcm7qGYdlo+Tdh9hEneBAAAA==
```

- 使用方式

  - 需要SND/ICE/Autohook/Arstian/Simpletweaks

  - 导入lua脚本并配置`comsic = 1`，以及宏的时间(冗余+5s)

  - 切换为采集职业配置ICE领取第一个任务：A-2 加工水产金属锭，领取成功以后运行脚本

    ```
    /equipjob 捕鱼人
    /ice only 508 (会清空配置，建议手动给钓鱼配)
    /ice start
    /snd run Lua宏名
    ```

  - 已知问题（不会/懒）/TODO

    - 过段时间会警惕
    - 没测试8分钟没掉上来的情况

    - 调用SND提供的IPC
    - 预先检测GP防止跳过后续判断