.class public final Lcom/umeng/facebook/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final APPLICATION_ID_KEY:Ljava/lang/String; = "application_id"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/umeng/facebook/AccessToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_JSON_FORMAT:I = 0x1

.field private static final DECLINED_PERMISSIONS_KEY:Ljava/lang/String; = "declined_permissions"

.field private static final DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/umeng/facebook/AccessTokenSource;

.field private static final DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

.field private static final EXPIRES_AT_KEY:Ljava/lang/String; = "expires_at"

.field public static final EXPIRES_IN_KEY:Ljava/lang/String; = "expires_in"

.field private static final LAST_REFRESH_KEY:Ljava/lang/String; = "last_refresh"

.field private static final MAX_DATE:Ljava/util/Date;

.field private static final PERMISSIONS_KEY:Ljava/lang/String; = "permissions"

.field private static final SOURCE_KEY:Ljava/lang/String; = "source"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token"

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final declinedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/umeng/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/umeng/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    .line 60
    sget-object v0, Lcom/umeng/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    sput-object v0, Lcom/umeng/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/umeng/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    .line 62
    sget-object v0, Lcom/umeng/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/umeng/facebook/AccessTokenSource;

    sput-object v0, Lcom/umeng/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/umeng/facebook/AccessTokenSource;

    .line 607
    new-instance v0, Lcom/umeng/facebook/AccessToken$1;

    invoke-direct {v0}, Lcom/umeng/facebook/AccessToken$1;-><init>()V

    sput-object v0, Lcom/umeng/facebook/AccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 578
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    .line 579
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 581
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/AccessTokenSource;->valueOf(Ljava/lang/String;)Lcom/umeng/facebook/AccessTokenSource;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    .line 585
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/umeng/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p4    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/umeng/facebook/AccessTokenSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/umeng/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "accessToken"

    .line 125
    invoke-static {p1, v0}, Lcom/umeng/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applicationId"

    .line 126
    invoke-static {p2, v0}, Lcom/umeng/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userId"

    .line 127
    invoke-static {p3, v0}, Lcom/umeng/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object p7, Lcom/umeng/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    :goto_0
    iput-object p7, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    if-eqz p4, :cond_1

    .line 130
    new-instance p7, Ljava/util/HashSet;

    invoke-direct {p7, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    new-instance p7, Ljava/util/HashSet;

    invoke-direct {p7}, Ljava/util/HashSet;-><init>()V

    :goto_1
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    if-eqz p5, :cond_2

    .line 132
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_2
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    .line 136
    iput-object p1, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    if-eqz p6, :cond_3

    goto :goto_3

    .line 137
    :cond_3
    sget-object p6, Lcom/umeng/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/umeng/facebook/AccessTokenSource;

    :goto_3
    iput-object p6, p0, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    if-eqz p8, :cond_4

    goto :goto_4

    .line 138
    :cond_4
    sget-object p8, Lcom/umeng/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    :goto_4
    iput-object p8, p0, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    .line 139
    iput-object p2, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    return-void
.end method

.method private appendPermissions(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, " permissions:"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 566
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    .line 569
    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method static createFromJSONObject(Lorg/json/JSONObject;)Lcom/umeng/facebook/AccessToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "version"

    .line 503
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, "token"

    .line 508
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    new-instance v8, Ljava/util/Date;

    const-string v0, "expires_at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v0, "permissions"

    .line 510
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "declined_permissions"

    .line 511
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 512
    new-instance v9, Ljava/util/Date;

    const-string v3, "last_refresh"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "source"

    .line 513
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/facebook/AccessTokenSource;->valueOf(Ljava/lang/String;)Lcom/umeng/facebook/AccessTokenSource;

    move-result-object v7

    const-string v3, "application_id"

    .line 514
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_id"

    .line 515
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    new-instance p0, Lcom/umeng/facebook/AccessToken;

    .line 521
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 522
    invoke-static {v1}, Lcom/umeng/facebook/internal/Utility;->jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/umeng/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/umeng/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    return-object p0

    .line 505
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Unknown AccessToken serialization format."

    invoke-direct {p0, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createFromLegacyCache(Landroid/os/Bundle;)Lcom/umeng/facebook/AccessToken;
    .locals 10

    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    .line 424
    invoke-static {p0, v0}, Lcom/umeng/facebook/AccessToken;->getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    .line 427
    invoke-static {p0, v0}, Lcom/umeng/facebook/AccessToken;->getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 431
    invoke-static {p0}, Lcom/umeng/facebook/LegacyTokenHelper;->getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 436
    invoke-static {p0}, Lcom/umeng/facebook/LegacyTokenHelper;->getToken(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v2}, Lcom/umeng/facebook/internal/Utility;->awaitGetGraphMeRequestWithCache(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "id"

    .line 440
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    new-instance v0, Lcom/umeng/facebook/AccessToken;

    .line 453
    invoke-static {p0}, Lcom/umeng/facebook/LegacyTokenHelper;->getSource(Landroid/os/Bundle;)Lcom/umeng/facebook/AccessTokenSource;

    move-result-object v7

    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 454
    invoke-static {p0, v1}, Lcom/umeng/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 457
    invoke-static {p0, v1}, Lcom/umeng/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/umeng/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/umeng/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;
    .locals 1

    .line 149
    invoke-static {}, Lcom/umeng/facebook/AccessTokenManager;->getInstance()Lcom/umeng/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 470
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static setCurrentAccessToken(Lcom/umeng/facebook/AccessToken;)V
    .locals 1

    .line 158
    invoke-static {}, Lcom/umeng/facebook/AccessTokenManager;->getInstance()Lcom/umeng/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/umeng/facebook/AccessToken;)V

    return-void
.end method

.method private tokenToString()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 556
    :cond_0
    sget-object v0, Lcom/umeng/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/umeng/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/umeng/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/umeng/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "ACCESS_TOKEN_REMOVED"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 362
    :cond_0
    instance-of v1, p1, Lcom/umeng/facebook/AccessToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 366
    :cond_1
    check-cast p1, Lcom/umeng/facebook/AccessToken;

    .line 368
    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    iget-object v3, p1, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    .line 369
    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    iget-object v3, p1, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    .line 370
    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    .line 371
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    iget-object v3, p1, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    iget-object v3, p1, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    .line 373
    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    .line 376
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    iget-object p1, p1, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    .line 377
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclinedPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getLastRefresh()Ljava/util/Date;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    return-object v0
.end method

.method public getPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    return-object v0
.end method

.method public getSource()Lcom/umeng/facebook/AccessTokenSource;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 385
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 386
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 387
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 388
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    invoke-virtual {v0}, Lcom/umeng/facebook/AccessTokenSource;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 389
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 390
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 391
    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isExpired()Z
    .locals 2

    .line 481
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 485
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    const/4 v2, 0x1

    .line 487
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 488
    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expires_at"

    .line 489
    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 490
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "permissions"

    .line 491
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "declined_permissions"

    .line 493
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_refresh"

    .line 494
    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "source"

    .line 495
    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    invoke-virtual {v2}, Lcom/umeng/facebook/AccessTokenSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "application_id"

    .line 496
    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_id"

    .line 497
    iget-object v2, p0, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AccessToken"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/umeng/facebook/AccessToken;->tokenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {p0, v0}, Lcom/umeng/facebook/AccessToken;->appendPermissions(Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 597
    iget-object p2, p0, Lcom/umeng/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 598
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->permissions:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 599
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/umeng/facebook/AccessToken;->declinedPermissions:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 600
    iget-object p2, p0, Lcom/umeng/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    iget-object p2, p0, Lcom/umeng/facebook/AccessToken;->source:Lcom/umeng/facebook/AccessTokenSource;

    invoke-virtual {p2}, Lcom/umeng/facebook/AccessTokenSource;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object p2, p0, Lcom/umeng/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 603
    iget-object p2, p0, Lcom/umeng/facebook/AccessToken;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget-object p2, p0, Lcom/umeng/facebook/AccessToken;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
