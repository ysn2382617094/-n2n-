.class public Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;
.super Ljava/lang/Object;
.source "N2NSettingModelDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AllowRouting:Lorg/greenrobot/greendao/Property;

.field public static final Community:Lorg/greenrobot/greendao/Property;

.field public static final DropMuticast:Lorg/greenrobot/greendao/Property;

.field public static final HolePunchInterval:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final Ip:Lorg/greenrobot/greendao/Property;

.field public static final IsSelcected:Lorg/greenrobot/greendao/Property;

.field public static final LocalIP:Lorg/greenrobot/greendao/Property;

.field public static final LocalPort:Lorg/greenrobot/greendao/Property;

.field public static final MacAddr:Lorg/greenrobot/greendao/Property;

.field public static final MoreSettings:Lorg/greenrobot/greendao/Property;

.field public static final Mtu:Lorg/greenrobot/greendao/Property;

.field public static final Name:Lorg/greenrobot/greendao/Property;

.field public static final Netmask:Lorg/greenrobot/greendao/Property;

.field public static final Password:Lorg/greenrobot/greendao/Property;

.field public static final ResoveSupernodeIP:Lorg/greenrobot/greendao/Property;

.field public static final SuperNode:Lorg/greenrobot/greendao/Property;

.field public static final SuperNodeBackup:Lorg/greenrobot/greendao/Property;

.field public static final TraceLevel:Lorg/greenrobot/greendao/Property;

.field public static final UseHttpTunnel:Lorg/greenrobot/greendao/Property;

.field public static final Version:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "version"

    const-string v12, "VERSION"

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Version:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v4, "name"

    const-string v6, "NAME"

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v10, "ip"

    const-string v12, "IP"

    const/4 v8, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Ip:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v4, "netmask"

    const-string v6, "NETMASK"

    const/4 v2, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Netmask:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v10, "community"

    const-string v12, "COMMUNITY"

    const/4 v8, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Community:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v4, "password"

    const-string v6, "PASSWORD"

    const/4 v2, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Password:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v10, "superNode"

    const-string v12, "SUPER_NODE"

    const/4 v8, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->SuperNode:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "moreSettings"

    const-string v6, "MORE_SETTINGS"

    const/16 v2, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->MoreSettings:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const-string v10, "superNodeBackup"

    const-string v12, "SUPER_NODE_BACKUP"

    const/16 v8, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->SuperNodeBackup:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v4, "macAddr"

    const-string v6, "MAC_ADDR"

    const/16 v2, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->MacAddr:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "mtu"

    const-string v12, "MTU"

    const/16 v8, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Mtu:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const-string v4, "localIP"

    const-string v6, "LOCAL_IP"

    const/16 v2, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->LocalIP:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "holePunchInterval"

    const-string v12, "HOLE_PUNCH_INTERVAL"

    const/16 v8, 0xd

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->HolePunchInterval:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "resoveSupernodeIP"

    const-string v6, "RESOVE_SUPERNODE_IP"

    const/16 v2, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->ResoveSupernodeIP:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "localPort"

    const-string v12, "LOCAL_PORT"

    const/16 v8, 0xf

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->LocalPort:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "allowRouting"

    const-string v6, "ALLOW_ROUTING"

    const/16 v2, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->AllowRouting:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v10, "dropMuticast"

    const-string v12, "DROP_MUTICAST"

    const/16 v8, 0x11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->DropMuticast:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "useHttpTunnel"

    const-string v6, "USE_HTTP_TUNNEL"

    const/16 v2, 0x12

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->UseHttpTunnel:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "traceLevel"

    const-string v12, "TRACE_LEVEL"

    const/16 v8, 0x13

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->TraceLevel:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "isSelcected"

    const-string v6, "IS_SELCECTED"

    const/16 v2, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->IsSelcected:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
