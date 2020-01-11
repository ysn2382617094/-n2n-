.class public final Lcom/umeng/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_APP_EVENTS_FEATURE_BITMASK:Ljava/lang/String; = "app_events_feature_bitmask"

.field private static final APP_SETTING_APP_EVENTS_SESSION_TIMEOUT:Ljava/lang/String; = "app_events_session_timeout"

.field private static final APP_SETTING_CUSTOM_TABS_ENABLED:Ljava/lang/String; = "gdpv4_chrome_custom_tabs_enabled"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_SMART_LOGIN_OPTIONS:Ljava/lang/String; = "seamless_login"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x8

.field private static final SMART_LOGIN_BOOKMARK_ICON_URL:Ljava/lang/String; = "smart_login_bookmark_icon_url"

.field private static final SMART_LOGIN_MENU_ICON_URL:Ljava/lang/String; = "smart_login_menu_icon_url"

.field private static fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/facebook/internal/FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "supports_implicit_sdk_logging"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "gdpv4_nux_content"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "gdpv4_nux_enabled"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "gdpv4_chrome_custom_tabs_enabled"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "android_dialog_configs"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "android_sdk_error_categories"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "app_events_session_timeout"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "app_events_feature_bitmask"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "seamless_login"

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "smart_login_bookmark_icon_url"

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "smart_login_menu_icon_url"

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/facebook/internal/FetchedAppSettings;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/facebook/internal/FetchedAppSettings;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 49
    sget-object v0, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, ","

    .line 201
    sget-object v3, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 203
    invoke-static {v1, p0, v1}, Lcom/umeng/facebook/GraphRequest;->newGraphPathRequest(Lcom/umeng/facebook/AccessToken;Ljava/lang/String;Lcom/umeng/facebook/GraphRequest$Callback;)Lcom/umeng/facebook/GraphRequest;

    move-result-object p0

    const/4 v1, 0x1

    .line 204
    invoke-virtual {p0, v1}, Lcom/umeng/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/umeng/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lcom/umeng/facebook/GraphRequest;->executeAndWait()Lcom/umeng/facebook/GraphResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/umeng/facebook/internal/FetchedAppSettings;
    .locals 1

    if-eqz p0, :cond_0

    .line 141
    sget-object v0, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/internal/FetchedAppSettings;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static loadAppSettingsAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 96
    sget-object v0, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 97
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 98
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.facebook.internal.APP_SETTINGS.%s"

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/umeng/facebook/internal/FetchedAppSettingsManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/umeng/facebook/internal/FetchedAppSettingsManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/facebook/internal/FetchedAppSettings;
    .locals 13

    const-string v0, "android_sdk_error_categories"

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/umeng/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/umeng/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0

    :goto_0
    move-object v10, v0

    goto :goto_1

    .line 170
    :cond_0
    invoke-static {v0}, Lcom/umeng/facebook/internal/FacebookRequestErrorClassification;->createFromJSON(Lorg/json/JSONArray;)Lcom/umeng/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v0, "app_events_feature_bitmask"

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 176
    :goto_2
    new-instance v0, Lcom/umeng/facebook/internal/FetchedAppSettings;

    const-string v2, "supports_implicit_sdk_logging"

    .line 177
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "gdpv4_nux_content"

    const-string v4, ""

    .line 178
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gdpv4_nux_enabled"

    .line 179
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "gdpv4_chrome_custom_tabs_enabled"

    .line 180
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v1, "app_events_session_timeout"

    const/16 v6, 0x3c

    .line 181
    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "seamless_login"

    .line 184
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/umeng/facebook/internal/SmartLoginOption;->parseOptions(J)Ljava/util/EnumSet;

    move-result-object v7

    const-string v1, "android_dialog_configs"

    .line 185
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    const-string v1, "smart_login_bookmark_icon_url"

    .line 188
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "smart_login_menu_icon_url"

    .line 189
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/umeng/facebook/internal/FetchedAppSettings;-><init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/umeng/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object p1, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, "data"

    .line 216
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 221
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/umeng/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseDialogConfig(Lorg/json/JSONObject;)Lcom/umeng/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {v2}, Lcom/umeng/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 230
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    invoke-virtual {v2}, Lcom/umeng/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/umeng/facebook/internal/FetchedAppSettings;
    .locals 0

    if-nez p1, :cond_0

    .line 150
    sget-object p1, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    sget-object p1, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/internal/FetchedAppSettings;

    return-object p0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_1
    invoke-static {p0, p1}, Lcom/umeng/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/facebook/internal/FetchedAppSettings;

    move-result-object p0

    return-object p0
.end method
