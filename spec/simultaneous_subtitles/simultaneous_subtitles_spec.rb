require File.join(File.expand_path(__dir__), '../spec_helper')

describe Titlekit::Mission do

  describe 'Simultaneous Subtitles' do
    
    context 'with dual subtitles' do
      let(:ins) do
        %w{one two}.map do |file|
          File.join(__dir__, 'dual', "#{file}.srt")
        end
      end

      context 'exporting to SRT' do
        before(:all) do
          @out = File.join(__dir__, 'dual', 'srt', 'out.srt')
          @expected = File.join(__dir__, 'dual', 'srt', 'expected.srt')

          File.delete(@out) if File.exist?(@out)
        end

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end

      context 'exporting to SSA' do
        before(:all) do
          @out = File.join(__dir__, 'dual', 'ssa', 'out.ssa')
          @expected = File.join(__dir__, 'dual', 'ssa', 'expected.ssa')

          File.delete(@out) if File.exist?(@out)
        end

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)

          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end

      context 'exporting to ASS' do
        before(:all) do
          @out = File.join(__dir__, 'dual', 'ass', 'out.ass')
          @expected = File.join(__dir__, 'dual', 'ass', 'expected.ass')

          File.delete(@out) if File.exist?(@out)
        end

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end            
    end

    context 'with triple subtitles' do
      let(:ins) do
        %w{one two three}.map do |file|
          File.join(__dir__, 'triple', "#{file}.srt")
        end
      end

      context 'exporting to SRT' do
        before(:all) do
          @out = File.join(__dir__, 'triple', 'srt', 'out.srt')
          @expected = File.join(__dir__, 'triple', 'srt', 'expected.srt')

          File.delete(@out) if File.exist?(@out)
        end

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end

      context 'exporting to SSA' do
        before(:all) do
          @out = File.join(__dir__, 'triple', 'ssa', 'out.ssa')
          @expected = File.join(__dir__, 'triple', 'ssa', 'expected.ssa')

          File.delete(@out) if File.exist?(@out)
        end

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end

      context 'exporting to ASS' do
        before(:all) do
          @out = File.join(__dir__, 'triple', 'ass', 'out.ass')
          @expected = File.join(__dir__, 'triple', 'ass', 'expected.ass')

          File.delete(@out) if File.exist?(@out)
        end

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end            
    end

    context 'with three+ simultaneous subtitles' do
      let(:ins) do
        %w{one two three four five six}.map do |file|
          File.join(__dir__, 'triple_plus', "#{file}.srt")
        end
      end

      context 'exporting to SRT' do
        before(:all) do
          @out = File.join(__dir__, 'triple_plus', 'srt', 'out.srt')
          @expected = File.join(__dir__, 'triple_plus', 'srt', 'expected.srt')

          File.delete(@out) if File.exist?(@out)
        end      

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end

      context 'exporting to SSA' do
        before(:all) do
          @out = File.join(__dir__, 'triple_plus', 'ssa', 'out.ssa')
          @expected = File.join(__dir__, 'triple_plus', 'ssa', 'expected.ssa')

          File.delete(@out) if File.exist?(@out)
        end      

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end

      context 'exporting to ASS' do
        before(:all) do
          @out = File.join(__dir__, 'triple_plus', 'ass', 'out.ass')
          @expected = File.join(__dir__, 'triple_plus', 'ass', 'expected.ass')

          File.delete(@out) if File.exist?(@out)
        end      

        it 'fulfills the mission' do
          mission = Titlekit::Mission.new
          ins.each { |file| mission.have.file(file).encoding('UTF-8') }
          mission.want.file(@out)
          
          expect(mission.fulfill).to be_true
        end

        it 'delivers the expected output' do
          expect(FileUtils.compare_file(@out, @expected)).to be_true
        end
      end            
    end
  end
end