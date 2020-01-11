.class public Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "N2NSettingModelDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "N2NSettingList"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lwang/switchy/hin2n/storage/db/base/DaoSession;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 62
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"N2NSettingList\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"VERSION\" INTEGER NOT NULL ,\"NAME\" TEXT,\"IP\" TEXT,\"NETMASK\" TEXT,\"COMMUNITY\" TEXT,\"PASSWORD\" TEXT,\"SUPER_NODE\" TEXT,\"MORE_SETTINGS\" INTEGER NOT NULL ,\"SUPER_NODE_BACKUP\" TEXT,\"MAC_ADDR\" TEXT,\"MTU\" INTEGER NOT NULL ,\"LOCAL_IP\" TEXT,\"HOLE_PUNCH_INTERVAL\" INTEGER NOT NULL ,\"RESOVE_SUPERNODE_IP\" INTEGER NOT NULL ,\"LOCAL_PORT\" INTEGER NOT NULL ,\"ALLOW_ROUTING\" INTEGER NOT NULL ,\"DROP_MUTICAST\" INTEGER NOT NULL ,\"USE_HTTP_TUNNEL\" INTEGER NOT NULL ,\"TRACE_LEVEL\" INTEGER NOT NULL ,\"IS_SELCECTED\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"N2NSettingList\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p0, p1, p2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V

    return-void
.end method

.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V
    .locals 8

    .line 160
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 162
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 166
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 168
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 173
    :cond_1
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 175
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 178
    :cond_2
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getNetmask()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 180
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 183
    :cond_3
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getCommunity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 185
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 188
    :cond_4
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 190
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_5
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 195
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0x9

    .line 197
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMoreSettings()Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_7

    move-wide v6, v4

    goto :goto_0

    :cond_7
    move-wide v6, v2

    :goto_0
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 199
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNodeBackup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    .line 201
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 204
    :cond_8
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0xc

    .line 208
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMtu()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 210
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalIP()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xd

    .line 212
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0xe

    .line 214
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getHolePunchInterval()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 215
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getResoveSupernodeIP()Z

    move-result v1

    if-eqz v1, :cond_b

    move-wide v6, v4

    goto :goto_1

    :cond_b
    move-wide v6, v2

    :goto_1
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 216
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalPort()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 217
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getAllowRouting()Z

    move-result v1

    if-eqz v1, :cond_c

    move-wide v6, v4

    goto :goto_2

    :cond_c
    move-wide v6, v2

    :goto_2
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    .line 218
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getDropMuticast()Z

    move-result v1

    if-eqz v1, :cond_d

    move-wide v6, v4

    goto :goto_3

    :cond_d
    move-wide v6, v2

    :goto_3
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 219
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getUseHttpTunnel()Z

    move-result v1

    if-eqz v1, :cond_e

    move-wide v6, v4

    goto :goto_4

    :cond_e
    move-wide v6, v2

    :goto_4
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x14

    .line 220
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getTraceLevel()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x15

    .line 221
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIsSelcected()Z

    move-result p2

    if-eqz p2, :cond_f

    move-wide v2, v4

    :cond_f
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p0, p1, p2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V
    .locals 8

    .line 94
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 96
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 100
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 102
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 104
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :cond_1
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 109
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :cond_2
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getNetmask()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 114
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :cond_3
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getCommunity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 119
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :cond_4
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 124
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 127
    :cond_5
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 129
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0x9

    .line 131
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMoreSettings()Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_7

    move-wide v6, v4

    goto :goto_0

    :cond_7
    move-wide v6, v2

    :goto_0
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 133
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNodeBackup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    .line 135
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 138
    :cond_8
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 140
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0xc

    .line 142
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMtu()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 144
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalIP()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xd

    .line 146
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0xe

    .line 148
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getHolePunchInterval()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 149
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getResoveSupernodeIP()Z

    move-result v1

    if-eqz v1, :cond_b

    move-wide v6, v4

    goto :goto_1

    :cond_b
    move-wide v6, v2

    :goto_1
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 150
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalPort()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 151
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getAllowRouting()Z

    move-result v1

    if-eqz v1, :cond_c

    move-wide v6, v4

    goto :goto_2

    :cond_c
    move-wide v6, v2

    :goto_2
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    .line 152
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getDropMuticast()Z

    move-result v1

    if-eqz v1, :cond_d

    move-wide v6, v4

    goto :goto_3

    :cond_d
    move-wide v6, v2

    :goto_3
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 153
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getUseHttpTunnel()Z

    move-result v1

    if-eqz v1, :cond_e

    move-wide v6, v4

    goto :goto_4

    :cond_e
    move-wide v6, v2

    :goto_4
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x14

    .line 154
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getTraceLevel()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x15

    .line 155
    invoke-virtual {p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIsSelcected()Z

    move-result p2

    if-eqz p2, :cond_f

    move-wide v2, v4

    :cond_f
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method public getKey(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->getKey(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->hasKey(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)Z

    move-result p1

    return p1
.end method

.method public hasKey(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)Z
    .locals 0

    .line 299
    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->readEntity(Landroid/database/Cursor;I)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;I)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;
    .locals 27

    move-object/from16 v0, p1

    .line 231
    new-instance v22, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    add-int/lit8 v2, p2, 0x0

    .line 232
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 233
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v5, p2, 0x2

    .line 234
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    add-int/lit8 v6, p2, 0x3

    .line 235
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    add-int/lit8 v7, p2, 0x4

    .line 236
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    add-int/lit8 v8, p2, 0x5

    .line 237
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    add-int/lit8 v9, p2, 0x6

    .line 238
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_5
    add-int/lit8 v10, p2, 0x7

    .line 239
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_6
    add-int/lit8 v11, p2, 0x8

    .line 240
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getShort(I)S

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_7
    add-int/lit8 v14, p2, 0x9

    .line 241
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_8
    add-int/lit8 v15, p2, 0xa

    .line 242
    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_9
    add-int/lit8 v4, p2, 0xb

    .line 243
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    add-int/lit8 v4, p2, 0xc

    .line 244
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v23, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v4

    :goto_a
    add-int/lit8 v4, p2, 0xd

    .line 245
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v4, p2, 0xe

    .line 246
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_b

    const/16 v18, 0x1

    goto :goto_b

    :cond_b
    const/16 v18, 0x0

    :goto_b
    add-int/lit8 v4, p2, 0xf

    .line 247
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    add-int/lit8 v4, p2, 0x10

    .line 248
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_c

    const/16 v20, 0x1

    goto :goto_c

    :cond_c
    const/16 v20, 0x0

    :goto_c
    add-int/lit8 v4, p2, 0x11

    .line 249
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_d

    const/16 v21, 0x1

    goto :goto_d

    :cond_d
    const/16 v21, 0x0

    :goto_d
    add-int/lit8 v4, p2, 0x12

    .line 250
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_e

    const/16 v24, 0x1

    goto :goto_e

    :cond_e
    const/16 v24, 0x0

    :goto_e
    add-int/lit8 v4, p2, 0x13

    .line 251
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    add-int/lit8 v1, p2, 0x14

    .line 252
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_f

    const/16 v26, 0x1

    goto :goto_f

    :cond_f
    const/16 v26, 0x0

    :goto_f
    move-object/from16 v0, v22

    move-object v1, v2

    move v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move-object v10, v14

    move-object v11, v15

    move/from16 v12, v16

    move-object/from16 v13, v23

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v24

    move/from16 v20, v25

    move/from16 v21, v26

    invoke-direct/range {v0 .. v21}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;-><init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZZZIZ)V

    return-object v22
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p0, p1, p2, p3}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->readEntity(Landroid/database/Cursor;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;I)V

    return-void
.end method

.method public readEntity(Landroid/database/Cursor;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;I)V
    .locals 5

    add-int/lit8 v0, p3, 0x0

    .line 259
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 260
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setVersion(I)V

    add-int/lit8 v0, p3, 0x2

    .line 261
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 262
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setIp(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 263
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setNetmask(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 264
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setCommunity(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 265
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setPassword(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 266
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setSuperNode(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 267
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setMoreSettings(Z)V

    add-int/lit8 v0, p3, 0x9

    .line 268
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setSuperNodeBackup(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 269
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setMacAddr(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 270
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setMtu(I)V

    add-int/lit8 v0, p3, 0xc

    .line 271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {p2, v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setLocalIP(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 272
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setHolePunchInterval(I)V

    add-int/lit8 v0, p3, 0xe

    .line 273
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setResoveSupernodeIP(Z)V

    add-int/lit8 v0, p3, 0xf

    .line 274
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setLocalPort(I)V

    add-int/lit8 v0, p3, 0x10

    .line 275
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setAllowRouting(Z)V

    add-int/lit8 v0, p3, 0x11

    .line 276
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setDropMuticast(Z)V

    add-int/lit8 v0, p3, 0x12

    .line 277
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setUseHttpTunnel(Z)V

    add-int/lit8 v0, p3, 0x13

    .line 278
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setTraceLevel(I)V

    add-int/lit8 p3, p3, 0x14

    .line 279
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p2, v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setIsSelcected(Z)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 226
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;J)Ljava/lang/Long;
    .locals 1

    .line 284
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setId(Ljava/lang/Long;)V

    .line 285
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p0, p1, p2, p3}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->updateKeyAfterInsert(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
