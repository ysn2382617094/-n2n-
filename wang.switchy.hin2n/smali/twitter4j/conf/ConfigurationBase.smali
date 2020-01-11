.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ltwitter4j/conf/Configuration;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;
    }
.end annotation


# static fields
.field private static final instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltwitter4j/conf/ConfigurationBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x55b3f2b9f8085720L


# instance fields
.field private applicationOnlyAuthEnabled:Z

.field private asyncNumThreads:I

.field private contributingTo:J

.field private daemonEnabled:Z

.field private debug:Z

.field private dispatcherImpl:Ljava/lang/String;

.field private httpConf:Ltwitter4j/HttpClientConfiguration;

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private includeEmailEnabled:Z

.field private includeEntitiesEnabled:Z

.field private includeExtAltTextEnabled:Z

.field private includeMyRetweetEnabled:Z

.field private jsonStoreEnabled:Z

.field private loggerFactory:Ljava/lang/String;

.field private mbeanEnabled:Z

.field private mediaProvider:Ljava/lang/String;

.field private mediaProviderAPIKey:Ljava/lang/String;

.field private mediaProviderParameters:Ljava/util/Properties;

.field private oAuth2AccessToken:Ljava/lang/String;

.field private oAuth2InvalidateTokenURL:Ljava/lang/String;

.field private oAuth2Scope:Ljava/lang/String;

.field private oAuth2TokenType:Ljava/lang/String;

.field private oAuth2TokenURL:Ljava/lang/String;

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private restBaseURL:Ljava/lang/String;

.field private siteStreamBaseURL:Ljava/lang/String;

.field private stallWarningsEnabled:Z

.field private streamBaseURL:Ljava/lang/String;

.field private trimUserEnabled:Z

.field private uploadBaseURL:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private userStreamBaseURL:Ljava/lang/String;

.field private userStreamRepliesAllEnabled:Z

.field private userStreamWithFollowingsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 13

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    const v2, 0x9c40

    .line 41
    iput v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 42
    iput v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    const/4 v2, 0x5

    .line 43
    iput v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 45
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    const-string v2, "https://api.twitter.com/oauth/request_token"

    .line 52
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    const-string v2, "https://api.twitter.com/oauth/authorize"

    .line 53
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    const-string v2, "https://api.twitter.com/oauth/access_token"

    .line 54
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    const-string v2, "https://api.twitter.com/oauth/authenticate"

    .line 55
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    const-string v2, "https://api.twitter.com/oauth2/token"

    .line 56
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    const-string v2, "https://api.twitter.com/oauth2/invalidate_token"

    .line 57
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    const-string v2, "https://api.twitter.com/1.1/"

    .line 59
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    const-string v2, "https://stream.twitter.com/1.1/"

    .line 60
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    const-string v2, "https://userstream.twitter.com/1.1/"

    .line 61
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    const-string v2, "https://sitestream.twitter.com/1.1/"

    .line 62
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    const-string v2, "https://upload.twitter.com/1.1/"

    .line 63
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    const-string v2, "twitter4j.DispatcherImpl"

    .line 65
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    const/4 v2, 0x1

    .line 66
    iput v2, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 68
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 70
    iput-wide v3, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    .line 72
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    .line 73
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 74
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    .line 75
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    .line 76
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    .line 78
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    .line 80
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    .line 82
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    .line 83
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    .line 84
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    .line 86
    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    const-string v0, "TWITTER"

    .line 88
    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    .line 91
    iput-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    .line 94
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x4e20

    const v10, 0x1d4c0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method static synthetic access$000(Ltwitter4j/conf/ConfigurationBase;)I
    .locals 0

    .line 34
    iget p0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return p0
.end method

.method static synthetic access$100(Ltwitter4j/conf/ConfigurationBase;)I
    .locals 0

    .line 34
    iget p0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return p0
.end method

.method private static cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V
    .locals 1

    .line 880
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "://"

    .line 690
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    add-int/lit8 v0, v0, 0x3

    .line 694
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 696
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 698
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 692
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url should contain \'://\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;
    .locals 2

    .line 891
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 892
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 895
    :cond_0
    sget-object p0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltwitter4j/conf/ConfigurationBase;

    return-object p0
.end method


# virtual methods
.method protected cacheInstance()V
    .locals 0

    .line 886
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V

    return-void
.end method

.method public dumpConfiguration()V
    .locals 6

    .line 229
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v0, :cond_1

    .line 230
    const-class v0, Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 231
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 233
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 234
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "oAuthConsumerSecret|oAuthAccessTokenSecret|password"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "*"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    .line 705
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1a

    .line 707
    :cond_1
    check-cast p1, Ltwitter4j/conf/ConfigurationBase;

    .line 709
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 710
    :cond_2
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    if-eq v2, v3, :cond_3

    return v1

    .line 711
    :cond_3
    iget-wide v2, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    iget-wide v4, p1, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 712
    :cond_4
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 713
    :cond_5
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 714
    :cond_6
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    if-eq v2, v3, :cond_7

    return v1

    .line 715
    :cond_7
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    if-eq v2, v3, :cond_8

    return v1

    .line 716
    :cond_8
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    if-eq v2, v3, :cond_9

    return v1

    .line 717
    :cond_9
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 718
    :cond_a
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 719
    :cond_b
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    if-eq v2, v3, :cond_c

    return v1

    .line 720
    :cond_c
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 721
    :cond_d
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    if-eq v2, v3, :cond_e

    return v1

    .line 722
    :cond_e
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 723
    :cond_f
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    if-eq v2, v3, :cond_10

    return v1

    .line 724
    :cond_10
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    if-eq v2, v3, :cond_11

    return v1

    .line 725
    :cond_11
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eq v2, v3, :cond_12

    return v1

    .line 726
    :cond_12
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    if-eq v2, v3, :cond_13

    return v1

    .line 727
    :cond_13
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_0

    :cond_14
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_0
    return v1

    .line 729
    :cond_15
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v2, :cond_16

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1

    :cond_16
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v2, :cond_17

    :goto_1
    return v1

    .line 730
    :cond_17
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_2

    :cond_18
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_2
    return v1

    .line 732
    :cond_19
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_3

    :cond_1a
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_3
    return v1

    .line 734
    :cond_1b
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_4

    :cond_1c
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_4
    return v1

    .line 736
    :cond_1d
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v2, v3}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_5

    :cond_1e
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v2, :cond_1f

    :goto_5
    return v1

    .line 738
    :cond_1f
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_6

    :cond_20
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v2, :cond_21

    :goto_6
    return v1

    .line 740
    :cond_21
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_7

    :cond_22
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_23

    :goto_7
    return v1

    .line 742
    :cond_23
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_8

    :cond_24
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v2, :cond_25

    :goto_8
    return v1

    .line 744
    :cond_25
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_9

    :cond_26
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v2, :cond_27

    :goto_9
    return v1

    .line 746
    :cond_27
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_a

    :cond_28
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    if-eqz v2, :cond_29

    :goto_a
    return v1

    .line 748
    :cond_29
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_b

    :cond_2a
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_2b

    :goto_b
    return v1

    .line 750
    :cond_2b
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_c

    :cond_2c
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v2, :cond_2d

    :goto_c
    return v1

    .line 752
    :cond_2d
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_d

    :cond_2e
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_2f

    :goto_d
    return v1

    .line 754
    :cond_2f
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v2, :cond_30

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_e

    :cond_30
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v2, :cond_31

    :goto_e
    return v1

    .line 756
    :cond_31
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_f

    :cond_32
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v2, :cond_33

    :goto_f
    return v1

    .line 758
    :cond_33
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_10

    :cond_34
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v2, :cond_35

    :goto_10
    return v1

    .line 760
    :cond_35
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_11

    :cond_36
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_37

    :goto_11
    return v1

    .line 762
    :cond_37
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_12

    :cond_38
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_39

    :goto_12
    return v1

    .line 764
    :cond_39
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_13

    :cond_3a
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v2, :cond_3b

    :goto_13
    return v1

    .line 765
    :cond_3b
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_14

    :cond_3c
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3d

    :goto_14
    return v1

    .line 766
    :cond_3d
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_15

    :cond_3e
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_3f

    :goto_15
    return v1

    .line 767
    :cond_3f
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_40

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_16

    :cond_40
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_41

    :goto_16
    return v1

    .line 769
    :cond_41
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_42

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_17

    :cond_42
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_43

    :goto_17
    return v1

    .line 771
    :cond_43
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v2, :cond_44

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_18

    :cond_44
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v2, :cond_45

    :goto_18
    return v1

    .line 772
    :cond_45
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_19

    :cond_46
    iget-object p1, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz p1, :cond_47

    :goto_19
    return v1

    :cond_47
    return v0

    :cond_48
    :goto_1a
    return v1
.end method

.method public final getAsyncNumThreads()I
    .locals 1

    .line 456
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return v0
.end method

.method public final getContributingTo()J
    .locals 2

    .line 465
    iget-wide v0, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    return-wide v0
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;
    .locals 1

    .line 267
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-object v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .line 374
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return v0
.end method

.method public getOAuth2AccessToken()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2InvalidateTokenURL()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2Scope()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2TokenType()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2TokenURL()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadBaseURL()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 780
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 781
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 782
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 783
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 784
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 785
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 786
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 787
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 788
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 789
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 790
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 791
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 792
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 793
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 794
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 795
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 796
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 797
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 798
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 799
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 800
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 801
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 802
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 803
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 804
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    const/4 v1, 0x0

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 805
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    const/4 v1, 0x0

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 806
    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 807
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16

    :cond_16
    const/4 v1, 0x0

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 808
    iget-wide v3, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    iget-wide v5, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 809
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 810
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 811
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 812
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 813
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 814
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 815
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 816
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 817
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 818
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 819
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 820
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_17
    const/4 v1, 0x0

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 821
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_18
    const/4 v1, 0x0

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 822
    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v1, :cond_19

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->hashCode()I

    move-result v2

    :cond_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 823
    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isApplicationOnlyAuthEnabled()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    return v0
.end method

.method public isDaemonEnabled()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    return v0
.end method

.method public isIncludeEmailEnabled()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    return v0
.end method

.method public isIncludeEntitiesEnabled()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return v0
.end method

.method public isIncludeExtAltTextEnabled()Z
    .locals 1

    .line 599
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    return v0
.end method

.method public isIncludeMyRetweetEnabled()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    return v0
.end method

.method public isJSONStoreEnabled()Z
    .locals 1

    .line 630
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    return v0
.end method

.method public isMBeanEnabled()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    return v0
.end method

.method public isTrimUserEnabled()Z
    .locals 1

    .line 594
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 901
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;

    move-result-object v0

    return-object v0
.end method

.method protected final setApplicationOnlyAuthEnabled(Z)V
    .locals 0

    .line 668
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    return-void
.end method

.method protected final setAsyncNumThreads(I)V
    .locals 0

    .line 460
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return-void
.end method

.method protected final setContributingTo(J)V
    .locals 0

    .line 469
    iput-wide p1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    return-void
.end method

.method protected setDaemonEnabled(Z)V
    .locals 0

    .line 608
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    return-void
.end method

.method protected final setDebug(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return-void
.end method

.method protected final setDispatcherImpl(Ljava/lang/String;)V
    .locals 0

    .line 566
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-void
.end method

.method protected final setGZIPEnabled(Z)V
    .locals 11

    .line 287
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 288
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 289
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 290
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 291
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 292
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 293
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    move-object v0, v10

    move-object v1, p0

    move v9, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setHttpConnectionTimeout(I)V
    .locals 11

    .line 349
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 350
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 351
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 352
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 354
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 355
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 356
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v0, v10

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setHttpProxyHost(Ljava/lang/String;)V
    .locals 11

    .line 301
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 302
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 303
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 304
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 305
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 306
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 307
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 308
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setHttpProxyPassword(Ljava/lang/String;)V
    .locals 11

    .line 325
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 326
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 328
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 329
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 330
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 331
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 332
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setHttpProxyPort(I)V
    .locals 11

    .line 337
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 338
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 339
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 341
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 342
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 343
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 344
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v0, v10

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setHttpProxyUser(Ljava/lang/String;)V
    .locals 11

    .line 313
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 315
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 316
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 317
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 318
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 319
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 320
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setHttpReadTimeout(I)V
    .locals 11

    .line 361
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 362
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 363
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 364
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 365
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 367
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 368
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v0, v10

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setHttpRetryCount(I)V
    .locals 0

    .line 382
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return-void
.end method

.method protected final setHttpRetryIntervalSeconds(I)V
    .locals 0

    .line 386
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return-void
.end method

.method protected final setHttpStreamingReadTimeout(I)V
    .locals 0

    .line 378
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return-void
.end method

.method protected setIncludeEmailEnabled(Z)V
    .locals 0

    .line 617
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    return-void
.end method

.method protected setIncludeEntitiesEnabled(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return-void
.end method

.method public setIncludeExtAltTextEnabled(Z)V
    .locals 0

    .line 625
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    return-void
.end method

.method public setIncludeMyRetweetEnabled(Z)V
    .locals 0

    .line 589
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    return-void
.end method

.method protected final setJSONStoreEnabled(Z)V
    .locals 0

    .line 634
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    return-void
.end method

.method protected final setLoggerFactory(Ljava/lang/String;)V
    .locals 0

    .line 580
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    return-void
.end method

.method protected final setMBeanEnabled(Z)V
    .locals 0

    .line 643
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    return-void
.end method

.method protected final setMediaProvider(Ljava/lang/String;)V
    .locals 0

    .line 673
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    return-void
.end method

.method protected final setMediaProviderAPIKey(Ljava/lang/String;)V
    .locals 0

    .line 678
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    return-void
.end method

.method protected final setMediaProviderParameters(Ljava/util/Properties;)V
    .locals 0

    .line 683
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    return-void
.end method

.method protected final setOAuth2AccessToken(Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuth2InvalidateTokenURL(Ljava/lang/String;)V
    .locals 0

    .line 557
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuth2Scope(Ljava/lang/String;)V
    .locals 0

    .line 451
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuth2TokenType(Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuth2TokenURL(Ljava/lang/String;)V
    .locals 0

    .line 548
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
    .locals 0

    .line 424
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
    .locals 0

    .line 530
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
    .locals 0

    .line 521
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 0

    .line 397
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-void
.end method

.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
    .locals 0

    .line 512
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-void
.end method

.method protected final setPassword(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-void
.end method

.method protected final setPrettyDebugEnabled(Z)V
    .locals 11

    .line 275
    new-instance v10, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 276
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 277
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 278
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 279
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 280
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 282
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v0, v10

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v10, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-void
.end method

.method protected final setRestBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-void
.end method

.method protected final setSiteStreamBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    return-void
.end method

.method protected final setStallWarningsEnabled(Z)V
    .locals 0

    .line 659
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    return-void
.end method

.method protected final setStreamBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-void
.end method

.method public setTrimUserEnabled(Z)V
    .locals 0

    .line 621
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    return-void
.end method

.method protected final setUploadBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    return-void
.end method

.method protected final setUser(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-void
.end method

.method protected final setUserStreamBaseURL(Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    return-void
.end method

.method protected final setUserStreamRepliesAllEnabled(Z)V
    .locals 0

    .line 650
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    return-void
.end method

.method protected final setUserStreamWithFollowingsEnabled(Z)V
    .locals 0

    .line 654
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationBase{debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", httpConf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", httpStreamingReadTimeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", httpRetryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", httpRetryIntervalSeconds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthConsumerKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthConsumerSecret=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthAccessToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthAccessTokenSecret=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuth2TokenType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuth2AccessToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuth2Scope=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2Scope:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthRequestTokenURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthAuthorizationURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthAccessTokenURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuthAuthenticationURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuth2TokenURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oAuth2InvalidateTokenURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", restBaseURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uploadBaseURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->uploadBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", streamBaseURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userStreamBaseURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", siteStreamBaseURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dispatcherImpl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", asyncNumThreads="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", loggerFactory=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contributingTo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", includeMyRetweetEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", includeEntitiesEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", includeEmailEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEmailEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", trimUserEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", includeExtAltTextEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeExtAltTextEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", jsonStoreEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbeanEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userStreamRepliesAllEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userStreamWithFollowingsEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", stallWarningsEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", applicationOnlyAuthEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mediaProvider=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediaProviderAPIKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mediaProviderParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", daemonEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
