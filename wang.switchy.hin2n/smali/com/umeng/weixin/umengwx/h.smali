.class public Lcom/umeng/weixin/umengwx/h;
.super Lcom/umeng/weixin/umengwx/a;


# static fields
.field private static final e:Ljava/lang/String; = "MicroMsg.SDK.SendAuth.Req"

.field private static final f:I = 0x400


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/weixin/umengwx/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/weixin/umengwx/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/umeng/weixin/umengwx/h;->b(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/umeng/weixin/umengwx/a;->a(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendauth_req_scope"

    iget-object v1, p0, Lcom/umeng/weixin/umengwx/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_sendauth_req_state"

    iget-object v1, p0, Lcom/umeng/weixin/umengwx/h;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/umeng/weixin/umengwx/a;->b(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_sendauth_req_scope"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/weixin/umengwx/h;->c:Ljava/lang/String;

    const-string v0, "_wxapi_sendauth_req_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/weixin/umengwx/h;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/umeng/weixin/umengwx/h;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/weixin/umengwx/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/weixin/umengwx/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/umeng/weixin/umengwx/h;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/weixin/umengwx/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
