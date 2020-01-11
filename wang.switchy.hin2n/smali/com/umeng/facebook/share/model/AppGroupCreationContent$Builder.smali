.class public Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;
.super Ljava/lang/Object;
.source "AppGroupCreationContent.java"

# interfaces
.implements Lcom/umeng/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/AppGroupCreationContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/facebook/share/model/ShareModelBuilder<",
        "Lcom/umeng/facebook/share/model/AppGroupCreationContent;",
        "Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private privacy:Lcom/umeng/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->privacy:Lcom/umeng/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/share/model/AppGroupCreationContent;
    .locals 2

    .line 153
    new-instance v0, Lcom/umeng/facebook/share/model/AppGroupCreationContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/AppGroupCreationContent;-><init>(Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;Lcom/umeng/facebook/share/model/AppGroupCreationContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->build()Lcom/umeng/facebook/share/model/AppGroupCreationContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/AppGroupCreationContent;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/AppGroupCreationContent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->setName(Ljava/lang/String;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/AppGroupCreationContent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->setDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/AppGroupCreationContent;->getAppGroupPrivacy()Lcom/umeng/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->setAppGroupPrivacy(Lcom/umeng/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 112
    check-cast p1, Lcom/umeng/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/AppGroupCreationContent;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAppGroupPrivacy(Lcom/umeng/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->privacy:Lcom/umeng/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/umeng/facebook/share/model/AppGroupCreationContent$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
