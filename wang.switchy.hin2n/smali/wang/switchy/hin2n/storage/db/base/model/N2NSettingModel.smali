.class public Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;
.super Ljava/lang/Object;
.source "N2NSettingModel.java"


# instance fields
.field allowRouting:Z

.field community:Ljava/lang/String;

.field dropMuticast:Z

.field holePunchInterval:I

.field id:Ljava/lang/Long;

.field ip:Ljava/lang/String;

.field isSelcected:Z

.field localIP:Ljava/lang/String;

.field localPort:I

.field macAddr:Ljava/lang/String;

.field moreSettings:Z

.field mtu:I

.field name:Ljava/lang/String;

.field netmask:Ljava/lang/String;

.field password:Ljava/lang/String;

.field resoveSupernodeIP:Z

.field superNode:Ljava/lang/String;

.field superNodeBackup:Ljava/lang/String;

.field traceLevel:I

.field useHttpTunnel:Z

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZZZIZ)V
    .locals 2

    move-object v0, p0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 209
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->id:Ljava/lang/Long;

    move v1, p2

    .line 210
    iput v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->version:I

    move-object v1, p3

    .line 211
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->name:Ljava/lang/String;

    move-object v1, p4

    .line 212
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->ip:Ljava/lang/String;

    move-object v1, p5

    .line 213
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->netmask:Ljava/lang/String;

    move-object v1, p6

    .line 214
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->community:Ljava/lang/String;

    move-object v1, p7

    .line 215
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->password:Ljava/lang/String;

    move-object v1, p8

    .line 216
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNode:Ljava/lang/String;

    move v1, p9

    .line 217
    iput-boolean v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->moreSettings:Z

    move-object v1, p10

    .line 218
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNodeBackup:Ljava/lang/String;

    move-object v1, p11

    .line 219
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->macAddr:Ljava/lang/String;

    move v1, p12

    .line 220
    iput v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->mtu:I

    move-object v1, p13

    .line 221
    iput-object v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localIP:Ljava/lang/String;

    move/from16 v1, p14

    .line 222
    iput v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->holePunchInterval:I

    move/from16 v1, p15

    .line 223
    iput-boolean v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->resoveSupernodeIP:Z

    move/from16 v1, p16

    .line 224
    iput v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localPort:I

    move/from16 v1, p17

    .line 225
    iput-boolean v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->allowRouting:Z

    move/from16 v1, p18

    .line 226
    iput-boolean v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->dropMuticast:Z

    move/from16 v1, p19

    .line 227
    iput-boolean v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->useHttpTunnel:Z

    move/from16 v1, p20

    .line 228
    iput v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->traceLevel:I

    move/from16 v1, p21

    .line 229
    iput-boolean v1, v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->isSelcected:Z

    return-void
.end method


# virtual methods
.method public getAllowRouting()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->allowRouting:Z

    return v0
.end method

.method public getCommunity()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->community:Ljava/lang/String;

    return-object v0
.end method

.method public getDropMuticast()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->dropMuticast:Z

    return v0
.end method

.method public getHolePunchInterval()I
    .locals 1

    .line 149
    iget v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->holePunchInterval:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 85
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSelcected()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->isSelcected:Z

    return v0
.end method

.method public getLocalIP()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 133
    iget v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localPort:I

    return v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreSettings()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->moreSettings:Z

    return v0
.end method

.method public getMtu()I
    .locals 1

    .line 165
    iget v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->mtu:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->netmask:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getResoveSupernodeIP()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->resoveSupernodeIP:Z

    return v0
.end method

.method public getSuperNode()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNode:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperNodeBackup()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNodeBackup:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceLevel()I
    .locals 1

    .line 109
    iget v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->traceLevel:I

    return v0
.end method

.method public getUseHttpTunnel()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->useHttpTunnel:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 189
    iget v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->version:I

    return v0
.end method

.method public isUseHttpTunnel()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->useHttpTunnel:Z

    return v0
.end method

.method public setAllowRouting(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->allowRouting:Z

    return-void
.end method

.method public setCommunity(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->community:Ljava/lang/String;

    return-void
.end method

.method public setDropMuticast(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->dropMuticast:Z

    return-void
.end method

.method public setHolePunchInterval(I)V
    .locals 0

    .line 153
    iput p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->holePunchInterval:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIsSelcected(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->isSelcected:Z

    return-void
.end method

.method public setLocalIP(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localIP:Ljava/lang/String;

    return-void
.end method

.method public setLocalPort(I)V
    .locals 0

    .line 137
    iput p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localPort:I

    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->macAddr:Ljava/lang/String;

    return-void
.end method

.method public setMoreSettings(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->moreSettings:Z

    return-void
.end method

.method public setMtu(I)V
    .locals 0

    .line 169
    iput p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->mtu:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNetmask(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->netmask:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->password:Ljava/lang/String;

    return-void
.end method

.method public setResoveSupernodeIP(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->resoveSupernodeIP:Z

    return-void
.end method

.method public setSuperNode(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNode:Ljava/lang/String;

    return-void
.end method

.method public setSuperNodeBackup(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNodeBackup:Ljava/lang/String;

    return-void
.end method

.method public setTraceLevel(I)V
    .locals 0

    .line 113
    iput p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->traceLevel:I

    return-void
.end method

.method public setUseHttpTunnel(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->useHttpTunnel:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 193
    iput p1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N2NSettingModel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", netmask=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->netmask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", community=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->community:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", superNode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", moreSettings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->moreSettings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", superNodeBackup=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->superNodeBackup:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", macAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mtu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->mtu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", localIP=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localIP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", holePunchInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->holePunchInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resoveSupernodeIP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->resoveSupernodeIP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->localPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowRouting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->allowRouting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dropMuticast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->dropMuticast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useHttpTunnel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->useHttpTunnel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", traceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->traceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelcected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->isSelcected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
