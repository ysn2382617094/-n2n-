.class public Lcom/umeng/socialize/net/dplus/CommonNetImpl;
.super Ljava/lang/Object;
.source "CommonNetImpl.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field public static final AID:Ljava/lang/String; = "aid"

.field public static final AM:Ljava/lang/String; = "am"

.field public static final AS:Ljava/lang/String; = "as"

.field public static final AT:Ljava/lang/String; = "at"

.field public static final AUTH:Ljava/lang/String; = "auth"

.field public static final A_B:Ljava/lang/String; = "a_b"

.field public static final CANCEL:Ljava/lang/String; = "cancel"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CT:Ljava/lang/String; = "ct"

.field public static final DAU:Ljava/lang/String; = "dau"

.field public static final DURL:Ljava/lang/String; = "durl"

.field public static final E_M:Ljava/lang/String; = "e_m"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FLAG_AUTH:I = 0x10000000

.field public static final FLAG_SHARE:I = 0x20000000

.field public static final FLAG_SHARE_EDIT:I = 0x1000000

.field public static final FLAG_SHARE_JUMP:I = 0x2000000

.field public static final HEADER:Ljava/lang/String; = "header"

.field public static final IMEI:Ljava/lang/String; = "imei"

.field public static final MAX_FILE_SIZE_IN_KB:I = 0x10000

.field public static final MAX_SEND_SIZE_IN_KB:I = 0x80000

.field public static final MAX_SIZE_IN_KB:I = 0x500000

.field public static final MENUBG:Ljava/lang/String; = "menubg"

.field public static final M_P:Ljava/lang/String; = "m_p"

.field public static final M_U:Ljava/lang/String; = "m_u"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PCV:Ljava/lang/String; = "s_pcv"

.field public static final PF:Ljava/lang/String; = "pf"

.field public static final PIC:Ljava/lang/String; = "pic"

.field public static final PICURL:Ljava/lang/String; = "picurl"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final REGION:Ljava/lang/String; = "regn"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final SDKT:Ljava/lang/String; = "sdkt"

.field public static final SDKVERSON:Ljava/lang/String; = "s_sdk_v"

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SHARETYPE:Ljava/lang/String; = "s_t"

.field public static final SM:Ljava/lang/String; = "sm"

.field public static final STATS:Ljava/lang/String; = "stats"

.field public static final STATS_TAG:Ljava/lang/String; = "stats"

.field public static final STYPE:Ljava/lang/String; = "stype"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final S_A_E:Ljava/lang/String; = "s_a_e"

.field public static final S_A_S:Ljava/lang/String; = "s_a_s"

.field public static final S_DAU:Ljava/lang/String; = "s_dau"

.field public static final S_E:Ljava/lang/String; = "s_e"

.field public static final S_I:Ljava/lang/String; = "s_i"

.field public static final S_I_E:Ljava/lang/String; = "s_i_e"

.field public static final S_I_S:Ljava/lang/String; = "s_i_s"

.field public static final S_S_E:Ljava/lang/String; = "s_s_e"

.field public static final S_S_S:Ljava/lang/String; = "s_s_s"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TS:Ljava/lang/String; = "ts"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UMID:Ljava/lang/String; = "umid"

.field public static final UN:Ljava/lang/String; = "un"

.field public static final UNIONID:Ljava/lang/String; = "unionid"

.field public static final UP:Ljava/lang/String; = "up"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USERINFO:Ljava/lang/String; = "userinfo"

.field public static final U_C:Ljava/lang/String; = "u_c"

.field private static isSendStats:Z

.field private static singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;


# instance fields
.field private authList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dauList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConetxt:Landroid/content/Context;

.field private shareList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private statsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    .line 231
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    return-void
.end method

.method private static constructHeader()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 411
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "s_sdk_v"

    const-string v2, "6.9.2"

    .line 412
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s_pcv"

    const-string v2, "3.0"

    .line 413
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/CommonNetImpl;
    .locals 1

    .line 235
    sget-object v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    .line 239
    :cond_0
    sget-object p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->singleton:Lcom/umeng/socialize/net/dplus/CommonNetImpl;

    return-object p0
.end method

.method private getObject()Lorg/json/JSONObject;
    .locals 4

    .line 322
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "header"

    .line 324
    invoke-static {}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->constructHeader()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 326
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "share"

    .line 328
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content"

    .line 329
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 333
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private saveFile(Lorg/json/JSONObject;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 492
    :pswitch_0
    iget-object p2, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertStats(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 489
    :pswitch_1
    iget-object p2, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertStats(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 482
    :pswitch_2
    iget-object p2, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertUserInfo(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 475
    :pswitch_3
    iget-object p2, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertAuth(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 479
    :pswitch_4
    iget-object p2, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertS_E(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 485
    :pswitch_5
    iget-object p2, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->insertDau(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6001
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .locals 2

    .line 282
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    const-string v1, "s_e"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    const-string v1, "auth"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 291
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    const-string v1, "dau"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 294
    :cond_2
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 295
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    const-string v1, "userinfo"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 298
    :cond_3
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 299
    sput-boolean p1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->isSendStats:Z

    .line 300
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    const-string v1, "stats"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .locals 21

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    long-to-double v4, v2

    .line 342
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v6

    const-wide/high16 v8, 0x40d8000000000000L    # 24576.0

    add-double/2addr v6, v8

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 349
    :goto_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "header"

    .line 351
    invoke-static {}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->constructHeader()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 353
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    .line 355
    iget-object v6, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v6

    const-string v7, "s_e"

    iget-object v8, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->shareList:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v9, 0x0

    sub-double v9, v4, v16

    move v11, v0

    :try_start_1
    invoke-virtual/range {v6 .. v11}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v11

    .line 356
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v8, 0x0

    add-double v16, v6, v16

    .line 357
    :try_start_2
    iget-object v6, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v6

    const-string v7, "auth"

    iget-object v8, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->authList:Ljava/util/ArrayList;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v9, 0x0

    sub-double v9, v4, v16

    move-object/from16 v18, v11

    move v11, v0

    :try_start_3
    invoke-virtual/range {v6 .. v11}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v11

    .line 358
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v8, 0x0

    add-double v16, v16, v6

    .line 359
    :try_start_4
    iget-object v6, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v6

    const-string v7, "userinfo"

    iget-object v8, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->infoList:Ljava/util/ArrayList;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v9, 0x0

    sub-double v9, v4, v16

    move-object/from16 v19, v11

    move v11, v0

    :try_start_5
    invoke-virtual/range {v6 .. v11}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v11

    .line 360
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v8, 0x0

    add-double v16, v16, v6

    .line 361
    :try_start_6
    iget-object v6, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v6

    const-string v7, "dau"

    iget-object v8, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->dauList:Ljava/util/ArrayList;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v9, 0x0

    sub-double v9, v4, v16

    move-object/from16 v20, v11

    move v11, v0

    :try_start_7
    invoke-virtual/range {v6 .. v11}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v11

    .line 362
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const/4 v8, 0x0

    add-double v16, v16, v6

    .line 364
    :try_start_8
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v6

    .line 365
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "dau"

    .line 366
    invoke-virtual {v15, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "s_e"

    move-object/from16 v9, v18

    .line 369
    invoke-virtual {v15, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    move-object/from16 v9, v18

    .line 371
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "auth"

    move-object/from16 v10, v19

    .line 372
    invoke-virtual {v15, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    move-object/from16 v10, v19

    .line 374
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "userinfo"

    move-object/from16 v13, v20

    .line 375
    invoke-virtual {v15, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    move-object/from16 v13, v20

    .line 377
    :goto_3
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const-wide/high16 v18, 0x4120000000000000L    # 524288.0

    cmpl-double v20, v6, v18

    if-gez v20, :cond_6

    .line 378
    sget-boolean v6, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->isSendStats:Z

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object v4, v11

    goto :goto_5

    .line 379
    :cond_6
    :goto_4
    iget-object v6, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v6

    const-string v7, "stats"

    iget-object v8, v1, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->statsList:Ljava/util/ArrayList;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const/16 v18, 0x0

    sub-double v4, v4, v16

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-wide v9, v4

    move-object v4, v11

    move v11, v0

    :try_start_9
    invoke-virtual/range {v6 .. v11}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v8

    .line 380
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "stats"

    .line 381
    invoke-virtual {v15, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    :goto_5
    const-string v0, "share"

    .line 385
    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content"

    .line 386
    invoke-virtual {v12, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 389
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 390
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 391
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 392
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v0, :cond_8

    const/4 v12, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 399
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    if-eqz v12, :cond_9

    .line 403
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_9

    const/4 v2, 0x0

    return-object v2

    :cond_9
    const/4 v2, 0x0

    return-object v2
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .locals 1

    const/16 p1, 0x6008

    if-ne p2, p1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->getObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "header"

    .line 256
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "content"

    .line 257
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/CommonNetImpl;->mConetxt:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
