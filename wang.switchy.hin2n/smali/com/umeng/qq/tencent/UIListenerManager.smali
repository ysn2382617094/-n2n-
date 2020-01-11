.class public Lcom/umeng/qq/tencent/UIListenerManager;
.super Ljava/lang/Object;
.source "UIListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "openSDK_LOG.UIListenerManager"

.field private static mInstance:Lcom/umeng/qq/tencent/UIListenerManager;


# instance fields
.field private mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    .line 34
    iget-object v0, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private buildListener(ILcom/umeng/qq/tencent/IUiListener;)Lcom/umeng/qq/tencent/IUiListener;
    .locals 0

    return-object p2
.end method

.method public static getInstance()Lcom/umeng/qq/tencent/UIListenerManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/umeng/qq/tencent/UIListenerManager;->mInstance:Lcom/umeng/qq/tencent/UIListenerManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/umeng/qq/tencent/UIListenerManager;

    invoke-direct {v0}, Lcom/umeng/qq/tencent/UIListenerManager;-><init>()V

    sput-object v0, Lcom/umeng/qq/tencent/UIListenerManager;->mInstance:Lcom/umeng/qq/tencent/UIListenerManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/umeng/qq/tencent/UIListenerManager;->mInstance:Lcom/umeng/qq/tencent/UIListenerManager;

    return-object v0
.end method


# virtual methods
.method public getListnerWithAction(Ljava/lang/String;)Lcom/umeng/qq/tencent/IUiListener;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    .line 85
    iget-object v1, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;

    .line 87
    iget-object v3, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, v2, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;->mListener:Lcom/umeng/qq/tencent/IUiListener;

    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getListnerWithRequestCode(I)Lcom/umeng/qq/tencent/IUiListener;
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/umeng/qq/tencent/Wifig;->a(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/umeng/qq/tencent/UIListenerManager;->getListnerWithAction(Ljava/lang/String;)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object p1

    return-object p1
.end method

.method public handleDataToListener(Landroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)V
    .locals 4

    if-nez p1, :cond_0

    .line 96
    invoke-interface {p2}, Lcom/umeng/qq/tencent/IUiListener;->onCancel()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "key_action"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_login"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x4

    if-eqz v1, :cond_3

    const-string v0, "key_error_code"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_response"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    :try_start_0
    invoke-static {p1}, Lcom/umeng/qq/tencent/JsonUtil;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    invoke-interface {p2, v0}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 110
    :catch_0
    new-instance v0, Lcom/umeng/qq/tencent/UiError;

    const-string v1, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v2, v1, p1}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto/16 :goto_1

    .line 113
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2, p1}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "key_error_msg"

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_error_detail"

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v2, Lcom/umeng/qq/tencent/UiError;

    invoke-direct {v2, v0, v1, p1}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "action_share"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "result"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "response"

    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cancel"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-interface {p2}, Lcom/umeng/qq/tencent/IUiListener;->onCancel()V

    goto :goto_1

    :cond_4
    const-string v1, "error"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    new-instance v0, Lcom/umeng/qq/tencent/UiError;

    const/4 v1, -0x6

    const-string v2, "unknown error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto :goto_1

    :cond_5
    const-string v1, "complete"

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    if-nez p1, :cond_6

    const-string v1, "{\"ret\": 0}"

    goto :goto_0

    :cond_6
    move-object v1, p1

    :goto_0
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-interface {p2, v0}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 133
    new-instance v0, Lcom/umeng/qq/tencent/UiError;

    const-string v1, "json error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/umeng/qq/tencent/IUiListener;)Z
    .locals 4

    .line 148
    invoke-virtual {p0, p1}, Lcom/umeng/qq/tencent/UIListenerManager;->getListnerWithRequestCode(I)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    return v1

    .line 154
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/umeng/qq/tencent/UIListenerManager;->buildListener(ILcom/umeng/qq/tencent/IUiListener;)Lcom/umeng/qq/tencent/IUiListener;

    move-result-object v0

    :cond_1
    const/4 p1, -0x1

    const/4 p4, 0x1

    if-ne p2, p1, :cond_c

    const/4 p1, -0x6

    if-nez p3, :cond_2

    .line 159
    new-instance p2, Lcom/umeng/qq/tencent/UiError;

    const-string p3, "onActivityResult intent data is null."

    const-string v1, "onActivityResult intent data is null."

    invoke-direct {p2, p1, p3, v1}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    return p4

    :cond_2
    const-string p2, "key_action"

    .line 163
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "action_login"

    .line 168
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x4

    if-eqz v2, :cond_5

    const-string p1, "key_error_code"

    .line 169
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "key_response"

    .line 171
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 174
    :try_start_0
    invoke-static {p1}, Lcom/umeng/qq/tencent/JsonUtil;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 175
    invoke-interface {v0, p2}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 177
    :catch_0
    new-instance p2, Lcom/umeng/qq/tencent/UiError;

    const-string p3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {p2, v3, p3, p1}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto/16 :goto_1

    .line 180
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, p1}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    const-string p2, "key_error_msg"

    .line 183
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "key_error_detail"

    .line 184
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 185
    new-instance v1, Lcom/umeng/qq/tencent/UiError;

    invoke-direct {v1, p1, p2, p3}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "action_share"

    .line 187
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "result"

    .line 188
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "response"

    .line 189
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "cancel"

    .line 190
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    invoke-interface {v0}, Lcom/umeng/qq/tencent/IUiListener;->onCancel()V

    goto/16 :goto_1

    :cond_6
    const-string v1, "error"

    .line 192
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    new-instance p2, Lcom/umeng/qq/tencent/UiError;

    const-string v1, "unknown error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v1, p3}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto/16 :goto_1

    :cond_7
    const-string p1, "complete"

    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 196
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    if-nez p3, :cond_8

    const-string p2, "{\"ret\": 0}"

    goto :goto_0

    :cond_8
    move-object p2, p3

    :goto_0
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-interface {v0, p1}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 199
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    new-instance p1, Lcom/umeng/qq/tencent/UiError;

    const-string p2, "json error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v3, p2, p3}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto :goto_1

    :cond_9
    const-string p1, "key_error_code"

    .line 204
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "key_response"

    .line 206
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 209
    :try_start_2
    invoke-static {p1}, Lcom/umeng/qq/tencent/JsonUtil;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 210
    invoke-interface {v0, p2}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 212
    :catch_2
    new-instance p2, Lcom/umeng/qq/tencent/UiError;

    const-string p3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {p2, v3, p3, p1}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto :goto_1

    .line 215
    :cond_a
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, p1}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    const-string p2, "key_error_msg"

    .line 218
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "key_error_detail"

    .line 219
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 220
    new-instance v1, Lcom/umeng/qq/tencent/UiError;

    invoke-direct {v1, p1, p2, p3}, Lcom/umeng/qq/tencent/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/umeng/qq/tencent/IUiListener;->onError(Lcom/umeng/qq/tencent/UiError;)V

    goto :goto_1

    .line 224
    :cond_c
    invoke-interface {v0}, Lcom/umeng/qq/tencent/IUiListener;->onCancel()V

    :cond_d
    :goto_1
    return p4
.end method

.method public setListenerWithRequestcode(ILcom/umeng/qq/tencent/IUiListener;)Ljava/lang/Object;
    .locals 5

    .line 41
    invoke-static {p1}, Lcom/umeng/qq/tencent/Wifig;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    .line 47
    iget-object v2, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    new-instance v4, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;

    invoke-direct {v4, p0, p1, p2}, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;-><init>(Lcom/umeng/qq/tencent/UIListenerManager;ILcom/umeng/qq/tencent/IUiListener;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;

    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p1, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;->mListener:Lcom/umeng/qq/tencent/IUiListener;

    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListnerWithAction(Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;)Ljava/lang/Object;
    .locals 5

    .line 56
    invoke-static {p1}, Lcom/umeng/qq/tencent/Wifig;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    .line 62
    iget-object v2, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/umeng/qq/tencent/UIListenerManager;->mListenerMap:Ljava/util/Map;

    new-instance v4, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;

    invoke-direct {v4, p0, v0, p2}, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;-><init>(Lcom/umeng/qq/tencent/UIListenerManager;ILcom/umeng/qq/tencent/IUiListener;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;

    .line 64
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p1, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;->mListener:Lcom/umeng/qq/tencent/IUiListener;

    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 64
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
