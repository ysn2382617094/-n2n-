.class public Lwang/switchy/hin2n/model/EdgeCmd;
.super Ljava/lang/Object;
.source "EdgeCmd.java"


# instance fields
.field public allowRouting:Z

.field public community:Ljava/lang/String;

.field public dropMuticast:Z

.field public edgeType:I

.field public encKey:Ljava/lang/String;

.field public encKeyFile:Ljava/lang/String;

.field public holePunchInterval:I

.field public httpTunnel:Z

.field public ipAddr:Ljava/lang/String;

.field public ipNetmask:Ljava/lang/String;

.field public localIP:Ljava/lang/String;

.field public localPort:I

.field public logPath:Ljava/lang/String;

.field public macAddr:Ljava/lang/String;

.field public mtu:I

.field public reResoveSupernodeIP:Z

.field public supernodes:[Ljava/lang/String;

.field public traceLevel:I

.field public vpnFd:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZZZIILjava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 31
    iput v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->edgeType:I

    move-object v1, p2

    .line 32
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->ipAddr:Ljava/lang/String;

    move-object v1, p3

    .line 33
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->ipNetmask:Ljava/lang/String;

    move-object v1, p4

    .line 34
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    move-object v1, p5

    .line 35
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->community:Ljava/lang/String;

    move-object v1, p6

    .line 36
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->encKey:Ljava/lang/String;

    move-object v1, p7

    .line 37
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->encKeyFile:Ljava/lang/String;

    move-object v1, p8

    .line 38
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->macAddr:Ljava/lang/String;

    move v1, p9

    .line 39
    iput v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->mtu:I

    move-object v1, p10

    .line 40
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->localIP:Ljava/lang/String;

    move v1, p11

    .line 41
    iput v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->holePunchInterval:I

    move v1, p12

    .line 42
    iput-boolean v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->reResoveSupernodeIP:Z

    move v1, p13

    .line 43
    iput v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->localPort:I

    move/from16 v1, p14

    .line 44
    iput-boolean v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->allowRouting:Z

    move/from16 v1, p15

    .line 45
    iput-boolean v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->dropMuticast:Z

    move/from16 v1, p16

    .line 46
    iput-boolean v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->httpTunnel:Z

    move/from16 v1, p17

    .line 47
    iput v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->traceLevel:I

    move/from16 v1, p18

    .line 48
    iput v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->vpnFd:I

    move-object/from16 v1, p19

    .line 49
    iput-object v1, v0, Lwang/switchy/hin2n/model/EdgeCmd;->logPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lwang/switchy/hin2n/model/N2NSettingInfo;ILjava/lang/String;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getVersion()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->edgeType:I

    .line 54
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->ipAddr:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getNetmask()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->ipNetmask:Ljava/lang/String;

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getSuperNode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 58
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getSuperNodeBackup()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 59
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getCommunity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->community:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->encKey:Ljava/lang/String;

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->encKeyFile:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->macAddr:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getMtu()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->mtu:I

    .line 64
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getLocalIP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->localIP:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getHolePunchInterval()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->holePunchInterval:I

    .line 66
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->isResoveSupernodeIP()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->reResoveSupernodeIP:Z

    .line 67
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getLocalPort()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->localPort:I

    .line 68
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->isAllowRouting()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->allowRouting:Z

    .line 69
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->isDropMuticast()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->dropMuticast:Z

    .line 70
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->isUseHttpTunnel()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->httpTunnel:Z

    .line 71
    invoke-virtual {p1}, Lwang/switchy/hin2n/model/N2NSettingInfo;->getTraceLevel()I

    move-result p1

    iput p1, p0, Lwang/switchy/hin2n/model/EdgeCmd;->traceLevel:I

    .line 72
    iput p2, p0, Lwang/switchy/hin2n/model/EdgeCmd;->vpnFd:I

    .line 73
    iput-object p3, p0, Lwang/switchy/hin2n/model/EdgeCmd;->logPath:Ljava/lang/String;

    return-void
.end method

.method public static checkCommunity(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xf

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkEncKey(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static checkEncKeyFile(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static checkIPV4(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "\\."

    .line 129
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 130
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 134
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 135
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const/16 v3, 0xff

    if-gt v2, v3, :cond_3

    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :cond_5
    :goto_2
    return v0

    :cond_6
    :goto_3
    return v0
.end method

.method public static checkIPV4Mask(Ljava/lang/String;)Z
    .locals 7

    const/16 v0, 0x9

    .line 148
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    goto :goto_5

    :cond_0
    const-string v2, "\\."

    .line 152
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 153
    array-length v2, p0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 157
    :goto_0
    :try_start_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    .line 158
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    .line 160
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 161
    aget v6, v0, v5

    if-ne v3, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 166
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v1

    :cond_6
    return v4

    :catch_0
    return v1

    :cond_7
    :goto_4
    return v1

    :cond_8
    :goto_5
    return v1

    :array_0
    .array-data 4
        0x0
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
        0xfe
        0xff
    .end array-data
.end method

.method public static checkInt(III)Z
    .locals 0

    if-lt p0, p1, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkMacAddr(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "0123456789abcdef"

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v2, v2, 0x1

    .line 216
    rem-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    return v1

    .line 222
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static checkMtu(I)Z
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x5dc

    .line 231
    invoke-static {p0, v0, v1}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result p0

    return p0
.end method

.method public static checkSupernode(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2f

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, ":"

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 182
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 185
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const v3, 0xffff

    if-gt v2, v3, :cond_3

    .line 186
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method public static getRandomMac()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "0123456789abcdef"

    .line 245
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x11

    if-ge v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 247
    rem-int/lit8 v4, v3, 0x3

    if-nez v4, :cond_0

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkValues(Ljava/util/Vector;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 81
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->ipAddr:Ljava/lang/String;

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkIPV4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ipAddr"

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->ipNetmask:Ljava/lang/String;

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkIPV4Mask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ipNetmask"

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkSupernode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->supernodes:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkSupernode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "(backup)supernode"

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_4
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->community:Ljava/lang/String;

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkCommunity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "community"

    .line 92
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_5
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->encKey:Ljava/lang/String;

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkEncKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "encKey"

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_6
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->encKeyFile:Ljava/lang/String;

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkEncKeyFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "encKeyFile"

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_7
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->macAddr:Ljava/lang/String;

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkMacAddr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "macAddr"

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_8
    iget v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->mtu:I

    const/16 v3, 0x2e

    const/16 v4, 0x5dc

    invoke-static {v0, v3, v4}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "mut"

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_9
    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->localIP:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->localIP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->localIP:Ljava/lang/String;

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkIPV4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "localIP"

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_a
    iget v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->holePunchInterval:I

    const/16 v3, 0xa

    const/16 v4, 0x78

    invoke-static {v0, v3, v4}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "holePunchInterval"

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_b
    iget v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->localPort:I

    const v3, 0xffff

    invoke-static {v0, v2, v3}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "localPort"

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_c
    iget v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->traceLevel:I

    const/4 v4, 0x4

    invoke-static {v0, v2, v4}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "traceLevel"

    .line 116
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_d
    iget v0, p0, Lwang/switchy/hin2n/model/EdgeCmd;->vpnFd:I

    invoke-static {v0, v2, v3}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "traceLevel"

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_e
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
