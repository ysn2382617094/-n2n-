.class public Lwang/switchy/hin2n/model/N2NSettingInfo;
.super Ljava/lang/Object;
.source "N2NSettingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lwang/switchy/hin2n/model/N2NSettingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowRouting:Z

.field community:Ljava/lang/String;

.field dropMuticast:Z

.field holePunchInterval:I

.field id:Ljava/lang/Long;

.field ip:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lwang/switchy/hin2n/model/N2NSettingInfo$1;

    invoke-direct {v0}, Lwang/switchy/hin2n/model/N2NSettingInfo$1;-><init>()V

    sput-object v0, Lwang/switchy/hin2n/model/N2NSettingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->id:Ljava/lang/Long;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->name:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->version:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->ip:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->netmask:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->community:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->password:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNode:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->moreSettings:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNodeBackup:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->macAddr:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->mtu:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localIP:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->holePunchInterval:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->resoveSupernodeIP:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localPort:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->allowRouting:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->dropMuticast:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->traceLevel:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->useHttpTunnel:Z

    return-void
.end method

.method public constructor <init>(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->id:Ljava/lang/Long;

    .line 40
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getVersion()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->version:I

    .line 42
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->ip:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getNetmask()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->netmask:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getCommunity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->community:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->password:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNode:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMoreSettings()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->moreSettings:Z

    .line 48
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNodeBackup()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNodeBackup:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->macAddr:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMtu()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->mtu:I

    .line 51
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalIP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localIP:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getHolePunchInterval()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->holePunchInterval:I

    .line 53
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getResoveSupernodeIP()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->resoveSupernodeIP:Z

    .line 54
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalPort()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localPort:I

    .line 55
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getAllowRouting()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->allowRouting:Z

    .line 56
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getDropMuticast()Z

    move-result v0

    iput-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->dropMuticast:Z

    .line 57
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getTraceLevel()I

    move-result v0

    iput v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->traceLevel:I

    .line 58
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->isUseHttpTunnel()Z

    move-result p1

    iput-boolean p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->useHttpTunnel:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCommunity()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->community:Ljava/lang/String;

    return-object v0
.end method

.method public getHolePunchInterval()I
    .locals 1

    .line 193
    iget v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->holePunchInterval:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 97
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalIP()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 209
    iget v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localPort:I

    return v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 177
    iget v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->mtu:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->netmask:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperNode()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNode:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperNodeBackup()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNodeBackup:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceLevel()I
    .locals 1

    .line 233
    iget v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->traceLevel:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 241
    iget v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->version:I

    return v0
.end method

.method public isAllowRouting()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->allowRouting:Z

    return v0
.end method

.method public isDropMuticast()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->dropMuticast:Z

    return v0
.end method

.method public isMoreSettings()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->moreSettings:Z

    return v0
.end method

.method public isResoveSupernodeIP()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->resoveSupernodeIP:Z

    return v0
.end method

.method public isUseHttpTunnel()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->useHttpTunnel:Z

    return v0
.end method

.method public setAllowRouting(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->allowRouting:Z

    return-void
.end method

.method public setCommunity(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->community:Ljava/lang/String;

    return-void
.end method

.method public setDropMuticast(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->dropMuticast:Z

    return-void
.end method

.method public setHolePunchInterval(I)V
    .locals 0

    .line 197
    iput p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->holePunchInterval:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setLocalIP(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localIP:Ljava/lang/String;

    return-void
.end method

.method public setLocalPort(I)V
    .locals 0

    .line 213
    iput p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localPort:I

    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->macAddr:Ljava/lang/String;

    return-void
.end method

.method public setMoreSettings(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->moreSettings:Z

    return-void
.end method

.method public setMtu(I)V
    .locals 0

    .line 181
    iput p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->mtu:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNetmask(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->netmask:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setResoveSupernodeIP(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->resoveSupernodeIP:Z

    return-void
.end method

.method public setSuperNode(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNode:Ljava/lang/String;

    return-void
.end method

.method public setSuperNodeBackup(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNodeBackup:Ljava/lang/String;

    return-void
.end method

.method public setTraceLevel(I)V
    .locals 0

    .line 237
    iput p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->traceLevel:I

    return-void
.end method

.method public setUseHttpTunnel(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->useHttpTunnel:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 245
    iput p1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N2NSettingInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", netmask=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->netmask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", community=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->community:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", superNode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", moreSettings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->moreSettings:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", superNodeBackup=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNodeBackup:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", macAddr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mtu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->mtu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", localIP=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localIP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", holePunchInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->holePunchInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resoveSupernodeIP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->resoveSupernodeIP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowRouting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->allowRouting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dropMuticast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->dropMuticast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", traceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->traceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useHttpTunnel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->useHttpTunnel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 289
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->id:Ljava/lang/Long;

    if-nez p2, :cond_0

    .line 290
    new-instance p2, Ljava/lang/Long;

    const-wide/16 v0, -0x1

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    :goto_0
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->netmask:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->community:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-boolean p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->moreSettings:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 302
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->superNodeBackup:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->macAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->mtu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localIP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->holePunchInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-boolean p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->resoveSupernodeIP:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 308
    iget p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->localPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-boolean p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->allowRouting:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 310
    iget-boolean p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->dropMuticast:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 311
    iget p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->traceLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-boolean p2, p0, Lwang/switchy/hin2n/model/N2NSettingInfo;->useHttpTunnel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
