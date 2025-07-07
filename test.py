from typing import override
class Config:
    MAX_USERS = 100

    @override
    def Hello():
        pass




x = Config()
y = Config()

Config.MAX_USERS = 200
x.MAX_USERS = 100

print(x.MAX_USERS == y.MAX_USERS)



