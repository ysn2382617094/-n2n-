.class final Lumeng_bolts/AppLinkNavigation$1;
.super Ljava/lang/Object;
.source "AppLinkNavigation.java"

# interfaces
.implements Lumeng_bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lumeng_bolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lumeng_bolts/AppLinkResolver;)Lumeng_bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lumeng_bolts/Continuation<",
        "Lumeng_bolts/AppLink;",
        "Lumeng_bolts/AppLinkNavigation$NavigationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lumeng_bolts/AppLinkNavigation$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lumeng_bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    invoke-virtual {p0, p1}, Lumeng_bolts/AppLinkNavigation$1;->then(Lumeng_bolts/Task;)Lumeng_bolts/AppLinkNavigation$NavigationResult;

    move-result-object p1

    return-object p1
.end method

.method public then(Lumeng_bolts/Task;)Lumeng_bolts/AppLinkNavigation$NavigationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lumeng_bolts/Task<",
            "Lumeng_bolts/AppLink;",
            ">;)",
            "Lumeng_bolts/AppLinkNavigation$NavigationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lumeng_bolts/AppLinkNavigation$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lumeng_bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lumeng_bolts/AppLink;

    invoke-static {v0, p1}, Lumeng_bolts/AppLinkNavigation;->navigate(Landroid/content/Context;Lumeng_bolts/AppLink;)Lumeng_bolts/AppLinkNavigation$NavigationResult;

    move-result-object p1

    return-object p1
.end method
