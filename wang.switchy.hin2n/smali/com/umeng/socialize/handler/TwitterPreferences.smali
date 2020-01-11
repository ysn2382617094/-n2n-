.class public Lcom/umeng/socialize/handler/TwitterPreferences;
.super Ljava/lang/Object;
.source "TwitterPreferences.java"


# static fields
.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final TOKEN_SECRET:Ljava/lang/String; = "tokenSecret"

.field public static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private mSecret:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 25
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "token"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mToken:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "tokenSecret"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mSecret:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "uid"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mToken:Ljava/lang/String;

    .line 41
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tokenSecret"

    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mSecret:Ljava/lang/String;

    .line 42
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid"

    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mUid:Ljava/lang/String;

    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public delete()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mToken:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mSecret:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mUid:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getAuthData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tokenSecret"

    .line 49
    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mSecret:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 50
    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 51
    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mUid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "token"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mToken:Ljava/lang/String;

    return-object p1

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mSecret:Ljava/lang/String;

    return-object p1
.end method

.method public getmUid()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isAuth()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/handler/TwitterPreferences;
    .locals 0

    .line 31
    iput-object p2, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mToken:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mSecret:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterPreferences;->mUid:Ljava/lang/String;

    return-object p0
.end method
