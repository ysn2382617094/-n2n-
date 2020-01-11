.class public final Lumeng_bolts/AppLinks;
.super Ljava/lang/Object;
.source "AppLinks.java"


# static fields
.field static final KEY_NAME_APPLINK_DATA:Ljava/lang/String; = "al_applink_data"

.field static final KEY_NAME_EXTRAS:Ljava/lang/String; = "extras"

.field static final KEY_NAME_TARGET:Ljava/lang/String; = "target_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "al_applink_data"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getAppLinkExtras(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    .line 32
    invoke-static {p0}, Lumeng_bolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "extras"

    .line 33
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTargetUrl(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2

    .line 37
    invoke-static {p0}, Lumeng_bolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "target_url"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getTargetUrlFromInboundIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3

    .line 49
    invoke-static {p1}, Lumeng_bolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "target_url"

    .line 51
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "al_nav_in"

    .line 53
    check-cast v1, Ljava/util/Map;

    invoke-static {p0, v2, p1, v1}, Lumeng_bolts/MeasurementEvent;->sendBroadcastEvent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/util/Map;)V

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method
