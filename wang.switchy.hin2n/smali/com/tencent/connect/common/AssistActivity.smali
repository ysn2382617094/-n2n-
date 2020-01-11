.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "AssistActivity.java"


# static fields
.field public static final EXTRA_INTENT:Ljava/lang/String; = "openSDK_LOG.AssistActivity.ExtraIntent"

.field protected static final FINISH_BY_TIMEOUT:I = 0x0

.field private static final RESTART_FLAG:Ljava/lang/String; = "RESTART_FLAG"

.field private static final RESUME_FLAG:Ljava/lang/String; = "RESUME_FLAG"

.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.AssistActivity"


# instance fields
.field protected handler:Landroid/os/Handler;

.field private isRestart:Z

.field private mAppId:Ljava/lang/String;

.field protected mOnResumeIsInited:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->isRestart:Z

    .line 22
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->mOnResumeIsInited:Z

    .line 24
    new-instance v0, Lcom/tencent/connect/common/AssistActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/connect/common/AssistActivity$1;-><init>(Lcom/tencent/connect/common/AssistActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getAssistActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    const-string p2, "key_action"

    const-string v0, "action_login"

    .line 130
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/tencent/connect/common/AssistActivity;->setResultData(ILandroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->requestWindowFeature(I)Z

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    .line 47
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "openSDK_LOG.AssistActivity.ExtraIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "key_request_code"

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    if-nez v0, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    const-string v3, "appid"

    .line 54
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/tencent/connect/common/AssistActivity;->mAppId:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "h5_share_data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v4, "RESTART_FLAG"

    .line 57
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/connect/common/AssistActivity;->isRestart:Z

    const-string v4, "RESUME_FLAG"

    .line 58
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/connect/common/AssistActivity;->mOnResumeIsInited:Z

    .line 61
    :cond_3
    iget-boolean p1, p0, Lcom/tencent/connect/common/AssistActivity;->isRestart:Z

    if-nez p1, :cond_5

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p0, v0, v2}, Lcom/tencent/connect/common/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "key_action"

    const-string v1, "action_share"

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_login"

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "is_qq_mobile_share"

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->isRestart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->mOnResumeIsInited:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/tencent/connect/common/AssistActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->mOnResumeIsInited:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "RESTART_FLAG"

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "RESUME_FLAG"

    .line 122
    iget-boolean v1, p0, Lcom/tencent/connect/common/AssistActivity;->mOnResumeIsInited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setResultData(ILandroid/content/Intent;)V
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(I)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "key_response"

    .line 145
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 147
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "openid"

    .line 148
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "access_token"

    .line 149
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0, v2, p2}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0, v2, p2}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    invoke-static {p1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
