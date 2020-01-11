.class Lcom/umeng/facebook/GraphRequest$Attachment;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attachment"
.end annotation


# instance fields
.field private final request:Lcom/umeng/facebook/GraphRequest;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/umeng/facebook/GraphRequest;Ljava/lang/Object;)V
    .locals 0

    .line 1527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    iput-object p1, p0, Lcom/umeng/facebook/GraphRequest$Attachment;->request:Lcom/umeng/facebook/GraphRequest;

    .line 1529
    iput-object p2, p0, Lcom/umeng/facebook/GraphRequest$Attachment;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/umeng/facebook/GraphRequest;
    .locals 1

    .line 1533
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Attachment;->request:Lcom/umeng/facebook/GraphRequest;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1537
    iget-object v0, p0, Lcom/umeng/facebook/GraphRequest$Attachment;->value:Ljava/lang/Object;

    return-object v0
.end method
