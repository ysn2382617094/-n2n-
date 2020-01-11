.class public final enum Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;
.super Ljava/lang/Enum;
.source "EdgeStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwang/switchy/hin2n/model/EdgeStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunningStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

.field public static final enum CONNECTED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

.field public static final enum CONNECTING:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

.field public static final enum DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

.field public static final enum FAILED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

.field public static final enum SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->CONNECTING:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    .line 10
    new-instance v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    const-string v1, "CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->CONNECTED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    .line 11
    new-instance v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    const-string v1, "SUPERNODE_DISCONNECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    .line 12
    new-instance v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    const-string v1, "DISCONNECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    .line 13
    new-instance v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    const-string v1, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->FAILED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    const/4 v0, 0x5

    .line 8
    new-array v0, v0, [Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->CONNECTING:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    aput-object v1, v0, v2

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->CONNECTED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    aput-object v1, v0, v3

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->SUPERNODE_DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    aput-object v1, v0, v4

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    aput-object v1, v0, v5

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->FAILED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    aput-object v1, v0, v6

    sput-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->$VALUES:[Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;
    .locals 1

    .line 8
    const-class v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    return-object p0
.end method

.method public static values()[Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;
    .locals 1

    .line 8
    sget-object v0, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->$VALUES:[Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    invoke-virtual {v0}, [Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    return-object v0
.end method
