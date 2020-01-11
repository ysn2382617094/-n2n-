.class public Lcom/umeng/qq/handler/UmengQQPreferences;
.super Ljava/lang/Object;
.source "UmengQQPreferences.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final OPENID:Ljava/lang/String; = "openid"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static final UNIONID:Ljava/lang/String; = "unionid"

.field private static mtl:J


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mOpenid:Ljava/lang/String;

.field private mUID:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private unionid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mAccessToken:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mUID:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->unionid:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mOpenid:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "simplify"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "access_token"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mAccessToken:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "uid"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mUID:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "expires_in"

    const-wide/16 v1, 0x0

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    sput-wide p1, Lcom/umeng/qq/handler/UmengQQPreferences;->mtl:J

    .line 34
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "openid"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mOpenid:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "unionid"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->unionid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mAccessToken:Ljava/lang/String;

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expires_in"

    sget-wide v2, Lcom/umeng/qq/handler/UmengQQPreferences;->mtl:J

    .line 87
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid"

    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mUID:Ljava/lang/String;

    .line 88
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "openid"

    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mOpenid:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "unionid"

    iget-object v2, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->unionid:Ljava/lang/String;

    .line 90
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public delete()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mAccessToken:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 98
    sput-wide v1, Lcom/umeng/qq/handler/UmengQQPreferences;->mtl:J

    .line 99
    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mUID:Ljava/lang/String;

    return-void
.end method

.method public getMtl()J
    .locals 2

    .line 81
    sget-wide v0, Lcom/umeng/qq/handler/UmengQQPreferences;->mtl:J

    return-wide v0
.end method

.method public getUnionid()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->unionid:Ljava/lang/String;

    return-object v0
.end method

.method public getmAccessToken()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getuid()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mUID:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthValid()Z
    .locals 7

    .line 74
    sget-wide v0, Lcom/umeng/qq/handler/UmengQQPreferences;->mtl:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public setAuthData(Landroid/os/Bundle;)Lcom/umeng/qq/handler/UmengQQPreferences;
    .locals 4

    const-string v0, "access_token"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mAccessToken:Ljava/lang/String;

    const-string v0, "expires_in"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/umeng/qq/handler/UmengQQPreferences;->mtl:J

    const-string v0, "openid"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mOpenid:Ljava/lang/String;

    const-string v0, "openid"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mUID:Ljava/lang/String;

    const-string v0, "unionid"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->unionid:Ljava/lang/String;

    return-object p0
.end method

.method public setUnionid(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->unionid:Ljava/lang/String;

    return-void
.end method

.method public setmOpenid(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mOpenid:Ljava/lang/String;

    return-void
.end method

.method public setmUID(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQPreferences;->mUID:Ljava/lang/String;

    return-void
.end method
