.class public Lcom/tencent/bugly/beta/tinker/TinkerApplicationLike;
.super Lcom/tencent/tinker/loader/app/DefaultApplicationLike;
.source "BUGLY"


# static fields
.field public static final TAG:Ljava/lang/String; = "Tinker.TinkerApplicationLike"

.field private static tinkerPatchApplicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;


# direct methods
.method public constructor <init>(Landroid/app/Application;IZJJLandroid/content/Intent;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p8}, Lcom/tencent/tinker/loader/app/DefaultApplicationLike;-><init>(Landroid/app/Application;IZJJLandroid/content/Intent;)V

    .line 24
    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerApplicationLike;->setTinkerPatchApplicationLike(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    return-void
.end method

.method public static getTinkerPatchApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;
    .locals 1

    .line 32
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerApplicationLike;->tinkerPatchApplicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    return-object v0
.end method

.method private static setTinkerPatchApplicationLike(Lcom/tencent/tinker/loader/app/ApplicationLike;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/tencent/bugly/beta/tinker/TinkerApplicationLike;->tinkerPatchApplicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    return-void
.end method
