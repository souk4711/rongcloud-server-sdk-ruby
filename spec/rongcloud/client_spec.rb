RSpec.describe RongCloud::Client do
  subject do
    described_class.new(
      app_key: ENV["RONGCLOUD_APP_KEY"],
      app_secret: ENV["RONGCLOUD_APP_SECRET"],
      host: "api-cn.ronghub.com"
    )
  end

  let(:api) { subject.api }

  describe "#api" do
    it { expect(api).to respond_to(:chatroom) }
    it { expect(api).to respond_to(:conversation) }
    it { expect(api).to respond_to(:group) }
    it { expect(api).to respond_to(:jwt) }
    it { expect(api).to respond_to(:message) }
    it { expect(api).to respond_to(:push) }
    it { expect(api).to respond_to(:sensitiveword) }
    it { expect(api).to respond_to(:stat) }
    it { expect(api).to respond_to(:statusmessage) }
    it { expect(api).to respond_to(:ultragroup) }
    it { expect(api).to respond_to(:user) }

    describe "#chatroom" do
      it { expect(api.chatroom).to respond_to(:create) }
      it { expect(api.chatroom).to respond_to(:destroy) }
      it { expect(api.chatroom).to respond_to(:query) }
      it { expect(api.chatroom).to respond_to(:correlation_rtc) }
      it { expect(api.chatroom).to respond_to(:entry_query) }
      it { expect(api.chatroom).to respond_to(:entry_remove) }
      it { expect(api.chatroom).to respond_to(:entry_set) }
      it { expect(api.chatroom).to respond_to(:keepalive_add) }
      it { expect(api.chatroom).to respond_to(:keepalive_query) }
      it { expect(api.chatroom).to respond_to(:keepalive_remove) }
      it { expect(api.chatroom).to respond_to(:whitelist_add) }
      it { expect(api.chatroom).to respond_to(:whitelist_delete) }
      it { expect(api.chatroom).to respond_to(:whitelist_query) }
      it { expect(api.chatroom).to respond_to(:message_priority_add) }
      it { expect(api.chatroom).to respond_to(:message_priority_query) }
      it { expect(api.chatroom).to respond_to(:message_priority_remove) }
      it { expect(api.chatroom).to respond_to(:ban_add) }
      it { expect(api.chatroom).to respond_to(:ban_check) }
      it { expect(api.chatroom).to respond_to(:ban_query) }
      it { expect(api.chatroom).to respond_to(:ban_rollback) }
      it { expect(api.chatroom).to respond_to(:user_ban_add) }
      it { expect(api.chatroom).to respond_to(:user_ban_query) }
      it { expect(api.chatroom).to respond_to(:user_ban_remove) }
      it { expect(api.chatroom).to respond_to(:user_block_add) }
      it { expect(api.chatroom).to respond_to(:user_block_list) }
      it { expect(api.chatroom).to respond_to(:user_block_rollback) }
      it { expect(api.chatroom).to respond_to(:user_gag_add) }
      it { expect(api.chatroom).to respond_to(:user_gag_list) }
      it { expect(api.chatroom).to respond_to(:user_gag_rollback) }
      it { expect(api.chatroom).to respond_to(:user_query) }
      it { expect(api.chatroom).to respond_to(:user_whitelist_add) }
      it { expect(api.chatroom).to respond_to(:user_whitelist_query) }
      it { expect(api.chatroom).to respond_to(:user_whitelist_remove) }
      it { expect(api.chatroom).to respond_to(:user_exist) }
      it { expect(api.chatroom).to respond_to(:users_exist) }
    end

    describe "#conversation" do
      it { expect(api.conversation).to respond_to(:message_history_clean) }
      it { expect(api.conversation).to respond_to(:notification_get) }
      it { expect(api.conversation).to respond_to(:notification_set) }
      it { expect(api.conversation).to respond_to(:top_set) }
      it { expect(api.conversation).to respond_to(:type_notification_get) }
      it { expect(api.conversation).to respond_to(:type_notification_set) }
    end

    describe "#group" do
      it { expect(api.group).to respond_to(:create) }
      it { expect(api.group).to respond_to(:dismiss) }
      it { expect(api.group).to respond_to(:join) }
      it { expect(api.group).to respond_to(:quit) }
      it { expect(api.group).to respond_to(:refresh) }
      it { expect(api.group).to respond_to(:sync) }
      it { expect(api.group).to respond_to(:ban_add) }
      it { expect(api.group).to respond_to(:ban_query) }
      it { expect(api.group).to respond_to(:ban_rollback) }
      it { expect(api.group).to respond_to(:user_ban_whitelist_add) }
      it { expect(api.group).to respond_to(:user_ban_whitelist_query) }
      it { expect(api.group).to respond_to(:user_ban_whitelist_rollback) }
      it { expect(api.group).to respond_to(:user_gag_add) }
      it { expect(api.group).to respond_to(:user_gag_list) }
      it { expect(api.group).to respond_to(:user_gag_rollback) }
      it { expect(api.group).to respond_to(:user_query) }
      it { expect(api.group).to respond_to(:remarks_del) }
      it { expect(api.group).to respond_to(:remarks_get) }
      it { expect(api.group).to respond_to(:remarks_set) }
    end

    describe "#jwt" do
      it { expect(api.jwt).to respond_to(:gettoken) }
    end

    describe "#message" do
      it { expect(api.message).to respond_to(:broadcast) }
      it { expect(api.message).to respond_to(:recall) }
      it { expect(api.message).to respond_to(:chatroom_broadcast) }
      it { expect(api.message).to respond_to(:chatroom_publish) }
      it { expect(api.message).to respond_to(:private_publish) }
      it { expect(api.message).to respond_to(:private_publish_template) }
      it { expect(api.message).to respond_to(:group_publish) }
      it { expect(api.message).to respond_to(:online_broadcast) }
      it { expect(api.message).to respond_to(:system_publish) }
      it { expect(api.message).to respond_to(:system_publish_template) }
      it { expect(api.message).to respond_to(:ultragroup_publish) }
      it { expect(api.message).to respond_to(:expansion_delete) }
      it { expect(api.message).to respond_to(:expansion_query) }
      it { expect(api.message).to respond_to(:expansion_set) }
    end

    describe "#push" do
      it { expect(api.push).to respond_to(:call) }
      it { expect(api.push).to respond_to(:custom) }
      it { expect(api.push).to respond_to(:user) }
    end

    describe "#sensitiveword" do
      it { expect(api.sensitiveword).to respond_to(:add) }
      it { expect(api.sensitiveword).to respond_to(:delete) }
      it { expect(api.sensitiveword).to respond_to(:list) }
      it { expect(api.sensitiveword).to respond_to(:batch_delete) }
    end

    describe "#stat" do
      it { expect(api.stat).to respond_to(:getdaypushdata) }
      it { expect(api.stat).to respond_to(:getpushiddata) }
    end

    describe "#statusmessage" do
      it { expect(api.statusmessage).to respond_to(:group_publish) }
      it { expect(api.statusmessage).to respond_to(:private_publish) }
    end

    describe "#ultragroup" do
      it { expect(api.ultragroup).to respond_to(:create) }
      it { expect(api.ultragroup).to respond_to(:dis) }
      it { expect(api.ultragroup).to respond_to(:join) }
      it { expect(api.ultragroup).to respond_to(:quit) }
      it { expect(api.ultragroup).to respond_to(:refresh) }
      it { expect(api.ultragroup).to respond_to(:channel_create) }
      it { expect(api.ultragroup).to respond_to(:channel_del) }
      it { expect(api.ultragroup).to respond_to(:channel_get) }
      it { expect(api.ultragroup).to respond_to(:channel_private_users_add) }
      it { expect(api.ultragroup).to respond_to(:channel_private_users_del) }
      it { expect(api.ultragroup).to respond_to(:channel_private_users_get) }
      it { expect(api.ultragroup).to respond_to(:channel_type_change) }
      it { expect(api.ultragroup).to respond_to(:message_expansion_delete) }
      it { expect(api.ultragroup).to respond_to(:message_expansion_query) }
      it { expect(api.ultragroup).to respond_to(:message_expansion_set) }
      it { expect(api.ultragroup).to respond_to(:banned_whitelist_add) }
      it { expect(api.ultragroup).to respond_to(:banned_whitelist_del) }
      it { expect(api.ultragroup).to respond_to(:banned_whitelist_get) }
      it { expect(api.ultragroup).to respond_to(:globalbanned_get) }
      it { expect(api.ultragroup).to respond_to(:globalbanned_set) }
      it { expect(api.ultragroup).to respond_to(:member_exist) }
      it { expect(api.ultragroup).to respond_to(:notdisturb_get) }
      it { expect(api.ultragroup).to respond_to(:notdisturb_set) }
      it { expect(api.ultragroup).to respond_to(:userbanned_add) }
      it { expect(api.ultragroup).to respond_to(:userbanned_del) }
      it { expect(api.ultragroup).to respond_to(:userbanned_get) }
    end

    describe "#user" do
      it { expect(api.user).to respond_to(:gettoken) }
      it { expect(api.user).to respond_to(:token_expire) }
      it { expect(api.user).to respond_to(:info) }
      it { expect(api.user).to respond_to(:refresh) }
      it { expect(api.user).to respond_to(:tag_set) }
      it { expect(api.user).to respond_to(:tag_batch_set) }
      it { expect(api.user).to respond_to(:tags_get) }
      it { expect(api.user).to respond_to(:block) }
      it { expect(api.user).to respond_to(:block_query) }
      it { expect(api.user).to respond_to(:unblock) }
      it { expect(api.user).to respond_to(:checkonline) }
      it { expect(api.user).to respond_to(:group_query) }
      it { expect(api.user).to respond_to(:blacklist_add) }
      it { expect(api.user).to respond_to(:blacklist_query) }
      it { expect(api.user).to respond_to(:blacklist_remove) }
      it { expect(api.user).to respond_to(:whitelist_add) }
      it { expect(api.user).to respond_to(:whitelist_query) }
      it { expect(api.user).to respond_to(:whitelist_remove) }
      it { expect(api.user).to respond_to(:whitesetting_query) }
      it { expect(api.user).to respond_to(:whitesetting_set) }
      it { expect(api.user).to respond_to(:chat_fb_set) }
      it { expect(api.user).to respond_to(:chat_fb_querylist) }
      it { expect(api.user).to respond_to(:remarks_del) }
      it { expect(api.user).to respond_to(:remarks_get) }
      it { expect(api.user).to respond_to(:remarks_set) }
    end
  end

  describe "HTTP interactions", :vcr do
    it "#user" do
      expect {
        api.user.gettoken({})
      }.to raise_error(RongCloud::Exceptions::APIError, /The parameter userId is required/)

      data = api.user.gettoken(userId: "nutzer", name: "John Doe")
      expect(data["code"]).to eq(200)
      expect(data["userId"]).to eq("nutzer")

      data = api.user.info(userId: "nutzer")
      expect(data["code"]).to eq(200)
      expect(data["userName"]).to eq("John Doe")
    end

    it "#push" do
      data = api.push.call(platform: ["ios", "android"],
        fromuserid: "nutzer",
        audience: {
          is_to_all: true
        },
        message: {
          content: {content: "content,", extra: "extra"}.to_json,
          objectName: "RC:TxtMsg"
        },
        notification: {
          alert: "alert"
        })
      expect(data["code"]).to eq(200)
    end
  end

  describe "HTTP options" do
    it "timeout" do
      allow(TCPSocket).to receive(:open) { sleep 2.5 }
      client = described_class.new(
        app_key: ENV["RONGCLOUD_APP_KEY"],
        app_secret: ENV["RONGCLOUD_APP_SECRET"],
        host: "api-cn.ronghub.com",
        http: {
          timeout_class: HTTP::Timeout::Global,
          timeout_options: {global_timeout: 2}
        }
      )
      expect {
        client.api.user.gettoken(userId: "nutzer", name: "John Doe")
      }.to raise_error(RongCloud::Exceptions::HttpError, /execution expired/)
    end

    it "logging", :vcr do
      strio = StringIO.new
      client = described_class.new(
        app_key: ENV["RONGCLOUD_APP_KEY"],
        app_secret: ENV["RONGCLOUD_APP_SECRET"],
        host: "api-cn.ronghub.com",
        http: {
          features: {
            logging: {logger: Logger.new(strio)}
          }
        }
      )
      client.api.user.gettoken(userId: "nutzer", name: "John Doe")
      expect(strio.string).to include("> POST https://api-cn.ronghub.com/user/getToken.json")
    end
  end
end
