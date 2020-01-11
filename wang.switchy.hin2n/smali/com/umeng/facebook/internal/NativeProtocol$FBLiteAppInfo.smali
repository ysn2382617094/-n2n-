.class Lcom/umeng/facebook/internal/NativeProtocol$FBLiteAppInfo;
.super Lcom/umeng/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FBLiteAppInfo"
.end annotation


# static fields
.field static final FACEBOOK_LITE_ACTIVITY:Ljava/lang/String; = "com.facebook.lite.platform.LoginGDPDialogActivity"

.field static final FBLITE_PACKAGE:Ljava/lang/String; = "com.facebook.lite"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, v0}, Lcom/umeng/facebook/internal/NativeProtocol$NativeAppInfo;-><init>(Lcom/umeng/facebook/internal/NativeProtocol$1;)V

    return-void
.end method


# virtual methods
.method protected getLoginActivity()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.lite.platform.LoginGDPDialogActivity"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.lite"

    return-object v0
.end method
